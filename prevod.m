function [protein] = prevod(data)
data=genbankread(data);
ind=data.CDS.indices;
sek='';
complement='';
for i=1:length(ind)-1
    sek=[sek, data.Sequence(ind(i):ind(i+1))];
end
if ind(end)<ind(i)
    sek=seqrcomplement(sek)
end
fprintf(sek)
protein=nt2aa(sek,'GeneticCode',1)
end

