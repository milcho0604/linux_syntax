# 문자열 검색
grep -rni "hello"
ps -ef | grep "nginx" #ngnix가 들어가 있는 것만 찾음, kill -9 pid

# 파일 또는 디렉토리 검색 : find
find . -name "*.sh"

# 파일 검색 후 해당 내용엥서 원하는 문자열 찾을때
# xargs : 넘겨온 파일목록을 한줄한줄 읽겠다라는 의미
find . -name "*.sh" | xargs grep -n "hello"         #find . -name "*.sh" | xargs grep -rni "hello"와 같음 

# exec 옵션을 통한 find와 grep(find의 옵션)
find . -name "*.sh" -exec grep -n "hello" {} \;     #find . -name "*.txt" -exec echo{} \; -> exec의 또 다른 예

