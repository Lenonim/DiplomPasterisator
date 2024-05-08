@echo off
chcp 65001
if exist title\out\ (
  rmdir /s /q title\out
)
if exist task_form\out\ (
  rmdir /s /q task_form\out
)
if exist diplom\out\ (
  rmdir /s /q diplom\out
)
if exist diplom\svg-inkscape\ (
  rmdir /s /q diplom\svg-inkscape
)
if exist out\ (
  rmdir /s /q out
)
if exist practice_report\out\ (
  rmdir /s /q practice_report\out
)
if exist practice_report\svg-inkscape\ (
  rmdir /s /q practice_report\svg-inkscape
)
if exist summary\out\ (
  rmdir /s /q summary\out
)
chcp 866
end