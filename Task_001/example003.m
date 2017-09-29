function example003()
  strMessage = '\nNhap n: ';
  n = input(strMessage);
  s = 0;
  i = 1;
  while i<=n
      s = s+i;
      i = i+1;
  end
  fprintf('\nTong s=1+2+3+...+%d la: %d.\n',n,s);
end