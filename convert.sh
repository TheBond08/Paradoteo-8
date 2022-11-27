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
    pandoc -s -o $file.pdf $file.md
elif [ "$type" = "2" ];
then
    pandoc -o $file.docx -f markdown -t docx $file.md
elif [ "$type" = "3" ];
then
    pandoc -s $file.md --metadata title="$file" -o $file.html
else
    pandoc -f markdown -t plain $file.md -o $file.txt
fi

echo "The conversion was successful!"
