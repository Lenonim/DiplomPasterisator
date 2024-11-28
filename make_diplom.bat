@echo off
chcp 65001
if exist title\out\ (
  rmdir /s /q title\out
)
xelatex -interaction=nonstopmode -synctex=1 -output-directory=title\out -file-line-error title\title.tex
if exist task_form\out\ (
  rmdir /s /q task_form\out
)
xelatex -interaction=nonstopmode -synctex=1 -output-directory=task_form\out -file-line-error task_form\task_form.tex
if exist summary\out\ (
  rmdir /s /q summary\out
)
cd summary
xelatex -interaction=nonstopmode -synctex=1 -output-directory=out -file-line-error main.tex
cd ..
if exist annotation\out\ (
  rmdir /s /q annotation\out
)
xelatex -interaction=nonstopmode -synctex=1 -output-directory=annotation\out -file-line-error annotation\annotation.tex
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