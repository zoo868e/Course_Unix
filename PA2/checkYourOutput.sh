echo "Be patient. This might take up to 2 minutes to run..."
(source ~/PA2/testdir/testInput.sh)>~/PA2/testdir/testOutput.txt
echo Finished Running. Now checking for differences to the expected output:
cd ~/PA2/testdir/
diff testOutput.txt expectedOutput.txt && echo You passed the basic test.
