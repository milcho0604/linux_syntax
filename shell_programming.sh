# script 파일 생성
touch myscript.sh
nano myscript.sh

# myscript.sh 파일에 권한 부여 
chmod +x myscript.sh

# myscript.sh 파일을 실행
sudo ./myscript.sh

# if문
if [ 1 -gt 2 ]; then
    echo "hello world1"
else
    echo "hello world2"
fi

# if문과 변수활용, 파일(-f)/디렉토리(-d) 존재여부 확인
file_name="second_file.txt"
if [ -f "$file_name" ]; then
    echo "$file_name exist"
else
    echo "$file_name does not exist"
fi

# for문 가본
for a in {1..100}
do
    echo "hello world$a"
done

# if문 실습
echo "start"
name="test_dir"
point="test4.txt"
if [ -d "$$name" ]; then
    cd /home/ubuntu/"$name"
else
    cd /home/ubuntu
    mkdir "$name"
    cd "$name"
fi
if [-f "$point" ]; then
    echo "$point exists"
else
    touch "$point"
fi
for a in {1..100}
do
 echo "hello world$a" >> test4.txt
done


echo "finish"

# if문 정답
echo "start"
if [ -d test_dir ]; then
    cd test_dir
else    
    mkdir test_dir
    cd test_dir
fi

if [ -f test4.txt ]; then
    echo "okay"
else
    touch test4.txt
fi

for a in {1..100}
do
    echo "hello world$a" >> test4.txt
done

# for문 활용
count=0;
for a in {1..100}
do
    ((count++))
done
echo "count is $count"

# for문을 활용한 모둔 파일, directory 목록 출력하기
for a in *
do
    echo "a is $a"
done

# for문 활용한 file의 개수와 directory의 개수 세기
dir_count=0
others=0
for dir in *
do
if [ -d "$dir" ]; then
    ((dir_count++))
else
    ((others++))
fi
done
echo "dir is $dir_count"
echo "file is $others"
