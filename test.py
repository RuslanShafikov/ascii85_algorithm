import subprocess
import base64
import pytest
import string
import random
def clean_output(output: str) -> str:
    return output.replace("Enter data:", "").strip()

def test_ascii85_encode():
    input_text = "hello world!"
    result = subprocess.run(
        ['ascii85', '-e'],
        input=input_text.encode(),
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE
    )
    encoded_cpp = clean_output(result.stdout.decode())

    encoded_py = base64.a85encode(input_text.encode()).decode()
    assert encoded_cpp == encoded_py





def run_ascii85(mode: str, input_text: str) -> str:
    result = subprocess.run(
        ['ascii85', mode],
        input=input_text.encode(),
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE
    )
    return clean_output(result.stdout.decode())

def test_ascii85_encode():
    input_text = "hello world!"
    encoded_cpp = run_ascii85('-e', input_text)
    encoded_py = base64.a85encode(input_text.encode()).decode()
    assert encoded_cpp == encoded_py


def test_ascii85_decode():
    input_encoded = base64.a85encode(b"hello world!").decode()
    decoded_cpp = run_ascii85('-d', input_encoded)
    assert decoded_cpp == "hello world!"


def test_empty_string():
    encoded_cpp = run_ascii85('-e', "")
    decoded_cpp = run_ascii85('-d', encoded_cpp)
    assert decoded_cpp == ""


@pytest.mark.parametrize("length", [1, 2, 3, 5, 6, 7])
def test_odd_length(length):
    text = "x" * length
    encoded_cpp = run_ascii85('-e', text)
    decoded_cpp = run_ascii85('-d', encoded_cpp)
    assert decoded_cpp == text


def random_string(length: int) -> str:
    chars = string.printable.replace('\x0b', '').replace('\x0c', '')
    return ''.join(random.choices(chars, k=length))


def test_large_string_10k():
    text = "A" * 10_000
    encoded_cpp = run_ascii85('-e', text)
    decoded_cpp = run_ascii85('-d', encoded_cpp)
    assert decoded_cpp == text


def test_large_string_50k_mixed():
    text = random_string(50)
    encoded_cpp = run_ascii85('-e', text)
    decoded_cpp = run_ascii85('-d', encoded_cpp)
    assert decoded_cpp == text


def test_large_repeating_pattern():
    text = "abc123!@#" * 8000
    encoded_cpp = run_ascii85('-e', text)
    decoded_cpp = run_ascii85('-d', encoded_cpp)
    assert decoded_cpp == text