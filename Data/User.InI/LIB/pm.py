import re

class AutoPlusInterpreter:
    def __init__(self):
        self.variables = {}

    def execute(self, code):
        lines = code.split('\n')

        for line in lines:
            line = line.strip()
            if not line:
                continue

            if line.startswith('auto '):
                _, var_name, value = re.split(r'\s*=\s*', line[5:], maxsplit=1)
                self.variables[var_name] = self.evaluate_expression(value)

            elif line.startswith('print '):
                _, to_print = re.split(r'\s+', line, maxsplit=1)
                print(self.evaluate_expression(to_print))

            else:
                print("Syntax Error:", line)

    def evaluate_expression(self, expression):
        if expression.isdigit():
            return int(expression)
        elif expression in self.variables:
            return self.variables[expression]
        else:
            return None  # Handling more complex expressions would require a proper parser and evaluator

if __name__ == "__main__":
    interpreter = AutoPlusInterpreter()

    # Example code
    code = """
    auto x = 5
    auto y = 10
    print x + y
    """

    interpreter.execute(code)
