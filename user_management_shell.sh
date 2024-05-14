# 사용자 추가
sudo useradd 사용자명

# 패스워드 지정
sudo passwd 사용자

# 사용자 목록 조회
cat /etc/passwd

# 사용자 전환: 비밀번호는 전환하고자 하는 사용자의 비밀번호
su - 사용자명

# 파일 권한 관리
# 권한은 세파트(user:group:others)로 구성돼 있고 각 권한은 r(4)w(2)x(1)로 이루어져ㅕ잇음
chmod 777 test.sh
chmod u+x test.sh # user에게 실행권한을 부여
chmod g-w test.sh # 그룹에서 write 권한을 회수

# 파일 소유자 그룹 관리
# 소유자의 그룹 변경
sudo chown 소유자:그룹 파일명