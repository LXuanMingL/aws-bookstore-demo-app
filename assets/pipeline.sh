if ["$1" == ""];then
    echo "enter commit message"
    exit
else
    echo "run"
fi

echo "<1> prepare npm"
if npm install; then
	echo "install successful"
else
	echo "install failed"
	exit
fi

echo "<2>buile the application"
if npm run build; then
	echo "build succeddful"
else
	echo "build failed"
	exit
fi

echo "<3>start application"
if npm run start; then
        echo "success"
else
	echo "run failed"
	exit
fi

echo "<git add .>"
git add ../.

echo "<git commit -m message>"
git commit -m "$1"

echo "<git push>"
git push origin master
