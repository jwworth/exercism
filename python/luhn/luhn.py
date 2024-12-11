class Luhn:
    def __init__(self, card_num):
        self.card_num = card_num

    def _transform_digit(self, index, digit):
        if index % 2 != 0:
            doubled = digit * 2
            if doubled > 9:
                doubled = doubled - 9
            return doubled

        else:
            return digit

    def valid(self):
        stripped = self.card_num.replace(" ", "")

        if not stripped.isnumeric() or len(stripped) < 2:
            return False

        digits = map(int, list(stripped))
        transformed = (
            self._transform_digit(index, digit)
            for index, digit in enumerate(reversed(list(digits)))
        )

        return sum(transformed) % 10 == 0
