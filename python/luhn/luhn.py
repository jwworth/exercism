class Luhn:
    def __init__(self, card_num):
        self.card_num = card_num

    def double_odd_index(self, index, item):
      if index % 2 != 0:
        doubled = item * 2
        if doubled > 9:
          doubled = doubled -9
        return doubled

      else:
        return item

    def valid(self):
        stripped = self.card_num.replace(' ', '')

        if len(stripped) < 2:
            return False


        if not stripped.isnumeric():
            return False

        a_list = list(map(int, list(stripped)))
        a_list.reverse()
        b_list = map(lambda x: self.double_odd_index(*x), enumerate(a_list))
        return sum(b_list) % 10 == 0
