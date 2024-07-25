def calc(ans, exp):
  """Evaluates the given expression exp and compares it to ans

  Parameters:
  ans (int): Answer to test expressions against
  exp (String[]): Array of expressions

  Returns:
  string: "index {i}" where i is the expression's index
  string: "none" if no expression evaluated to ans
  """
  for i,e in enumerate(exp):
    if eval(e) == ans:
      return f"index {i}"
  return "none"

answer = int(input())
expressions = input().split()
print(calc(answer, expressions))