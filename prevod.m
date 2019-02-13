function [protein] = prevod(data)
%function 'prevod' translates nucleotide sequence from any genbank file to protein sequence
%input - genbank file
%output - string with final protein
data=genbankread(data);
ind=data.CDS.indices;
sek='';
complement='';
for i=1:length(ind)-1
    sek=[sek, data.Sequence(ind(i):ind(i+1))]; %its translating only triplets marked by indices
end
if ind(end)<ind(i)
    sek=seqrcomplement(sek)
end
fprintf(sek)
protein=nt2aa(sek,'GeneticCode',1)
end

