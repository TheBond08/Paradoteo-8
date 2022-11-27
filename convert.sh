#Author: inf2021160

echo "Please choose the markdown(.md) file you wish to convert."

read file

echo "Select which of the following types you wish the .md to be converted into:
a) .pdf
b) .docx
c) .html
d) .txt"
read type

echo "The conversion shall begin."

if [ "$type"="a" ];
then
    pandoc -s -o $file.pdf $file.md
elif [ "$type" = "b" ];
then
    pandoc -o $file.docx -f markdown -t docx $file.md
elif [ "$type" = "c" ];
then
    pandoc -s $file.md --metadata title="$file" -o $file.html
else
    pandoc -f markdown -t plain $file.md -o $file.txt
fi

echo "The conversion was successful!"
