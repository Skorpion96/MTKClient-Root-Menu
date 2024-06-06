@echo off
python mtk r boot,vbmeta boot.img,vbmeta.img
echo "patch boot.img with magisk or apatch app and rename the resulting file to boot-patched.img, then copy it on mtkclient folder and run 4th option on MTKClient Root Menu"
pause