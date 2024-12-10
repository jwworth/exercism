"""Functions used in preparing Guido's gorgeous lasagna.
"""

EXPECTED_BAKE_TIME = 40

def bake_time_remaining(elapsed_bake_time):
    """Calculate the bake time remaining.
    """
    return EXPECTED_BAKE_TIME - elapsed_bake_time
    

PREPARATION_TIME = 2

def preparation_time_in_minutes(number_of_layers):
    """Calculate the preparation time.
    """
    return PREPARATION_TIME * number_of_layers


def elapsed_time_in_minutes(number_of_layers, elapsed_bake_time):
    """
    Calculate the elapsed time in minutes.
    """
    return preparation_time_in_minutes(number_of_layers) + elapsed_bake_time
