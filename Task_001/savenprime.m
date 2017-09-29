function savenprime(n)
    rArray = findprime(n);
    strFileName = ['prime',num2str(n),'.mat'];
    save(strFileName,'rArray');
end