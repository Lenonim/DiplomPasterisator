@echo off
chcp 1251
if exist title\out\ (
  rmdir /s /q title\out
)
xelatex -interaction=nonstopmode -synctex=1 -output-directory=title\out -file-line-error title\title.tex
if exist task_form\out\ (
  rmdir /s /q task_form\out
)
xelatex -interaction=nonstopmode -synctex=1 -output-directory=task_form\out -file-line-error task_form\task_form.tex
if exist diplom\out\ (
  rmdir /s /q diplom\out
)
cd diplom
xelatex -interaction=nonstopmode -synctex=1 -output-directory=out -file-line-error -shell-escape main.tex
cd..
if exist out\ (
  rmdir /s /q out
)
xelatex -interaction=nonstopmode -synctex=1 -output-directory=out -file-line-error make_diplom.tex
chcp 866
end