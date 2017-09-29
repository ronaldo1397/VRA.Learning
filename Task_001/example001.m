function example001()
  a = rand();
  fprintf('\n So a la:%8.3f',a);
  
  r = randi([1 10]);
  fprintf('\n So r la: %d',r);
  
  rArray = randi([-10 10],1,10);
  fprintf('\n Kich thuoc mang la: %d',size(rArray,2));
  fprintf('\n Mang duoc tao la: ');
  fprintf('[%2d]',rArray);
end