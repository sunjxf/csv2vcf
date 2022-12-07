@echo off
setlocal EnableDelayedExpansion
chcp 65001
del b.vcf
 
set /a line=1
for /f "tokens=1,2,3,4 delims=," %%a in (a.csv) do (
        (echo BEGIN:VCARD)       >> b.vcf
        (echo VERSION:3.0)       >> b.vcf
        (echo FN:%%b)            >> b.vcf
        (echo TEL;TYPE=WORK,CELL:%%a) >> b.vcf
        (echo TITLE:%%c)           >> b.vcf
        (echo NOTE:%%d)         >> b.vcf
        (echo END:VCARD)         >> b.vcf
    set /a line+=1
)
 