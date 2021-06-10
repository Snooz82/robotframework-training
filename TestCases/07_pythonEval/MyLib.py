from time import sleep

def die_ist_private():
    """test"""
    print('DEBUG: test')

def my_funny_keyword(string):
    if string.lower() == 'HO'.lower():        
        print(string)
        return  True
    else:
        raise Exception('Ich hab HO gesagt!')

def _this_is_no_keyword():
    pass

def this_is_a_keyword(arg1):
    """Das ist die Doku des Keywords"""
    print(arg1)
    return 'Whatever'

def verify_positive_value(arg:int):
    if 0 < int(arg):
        print(f'Alles gut! Wert ist {arg}')
    else:
        raise AssertionError(f'Dat war Mist! {arg} ist nicht positiv!')

def wait_for_MQTT_to_ready():
    print('Sende Befehl')
    sleep(5)
    print('warte auf Beendigung')

def withkwarks(arg, *vargs, **kwargs):
    pass