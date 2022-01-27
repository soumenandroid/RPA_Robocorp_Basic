class  Number(object):

    def extract_digit_from(self, number):
        x = []
        for a in str(number):
            print(a)
            x.append(a)
        return x

n=Number()
number= n.extract_digit_from(989)
print(number)

