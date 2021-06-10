def log_byte_array(byte_arg: str):
    byte_arg = bytearray.fromhex(byte_arg)
    print(type(byte_arg))
    print(byte_arg.hex())


def to_hex():
    return bytearray.fromhex(byte_arg)