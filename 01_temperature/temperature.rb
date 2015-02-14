

def ftoc (f)
  #f = (9/5)C + 32
  #5F = 9C + 160
  #5F - 160 = 9C
  #C = (5F-160)/9
  c = (5*f - 160) / 9
  return c
end

def ctof (c)
  c = c.to_f
  #converted celsius number to float so that the next equation is within 0.1 of  98.6
  f = ((9*c)/5) + 32
  return f.to_f
end
