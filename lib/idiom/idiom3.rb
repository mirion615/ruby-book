def user_exists?
  user = find_user
  if user
    p true
  else
    p false
  end
end

def find_user
  !!find_user
end