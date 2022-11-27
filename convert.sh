#Author: inf2021160

echo "Please choose the markdown(.md) file you wish to convert."

read file

echo "Select which of the following types you wish the .md to be converted into:
1) .pdf
2) .docx
3) .html
4) .txt"
read type

echo "The conversion shall begin."

if [ "$type"="1" ];
then
    pandoc -s -o readme.pdf readme.md
elif [ "$type" = "2" ];
then
    pandoc -o readme.docx -f markdown -t docx readme.md
elif [ "$type" = "3" ];
then
    pandoc -s readme.md --metadata title="readme" -o readme.html
else
    pandoc -f markdown -t plain MYREADME.md -o MYREADME.txt
fi

echo "The conversion was successful!"
