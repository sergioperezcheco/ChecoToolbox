#!/bin/bash
#使用方式：
#wget -N https://checo.icu/checo.sh && chmod 700 ./checo.sh && ./checo.sh
#此版本：
#优化查询方法，增加功能

#显示随机的ASCII艺术
show_random_ascii_art() {
    # 生成一个随机数来选择艺术
    index=$((RANDOM % 3))

    # 显示选择的ASCII艺术
    if [ $index -eq 0 ]
    then
        cat << 'EOF'
 .----------------.  .----------------.  .----------------.  .----------------.  .----------------. 
| .--------------. || .--------------. || .--------------. || .--------------. || .--------------. |
| |     ______   | || |  ____  ____  | || |  _________   | || |     ______   | || |     ____     | |
| |   .' ___  |  | || | |_   ||   _| | || | |_   ___  |  | || |   .' ___  |  | || |   .'    `.   | |
| |  / .'   \_|  | || |   | |__| |   | || |   | |_  \_|  | || |  / .'   \_|  | || |  /  .--.  \  | |
| |  | |         | || |   |  __  |   | || |   |  _|  _   | || |  | |         | || |  | |    | |  | |
| |  \ `.___.'\  | || |  _| |  | |_  | || |  _| |___/ |  | || |  \ `.___.'\  | || |  \  `--'  /  | |
| |   `._____.'  | || | |____||____| | || | |_________|  | || |   `._____.'  | || |   `.____.'   | |
| |              | || |              | || |              | || |              | || |              | |
| '--------------' || '--------------' || '--------------' || '--------------' || '--------------' |
 '----------------'  '----------------'  '----------------'  '----------------'  '----------------'
EOF
    elif [ $index -eq 1 ]
    then
        cat << 'EOF'
          _____                    _____                    _____                    _____                   _______         
         /\    \                  /\    \                  /\    \                  /\    \                 /::\    \        
        /::\    \                /::\____\                /::\    \                /::\    \               /::::\    \       
       /::::\    \              /:::/    /               /::::\    \              /::::\    \             /::::::\    \      
      /::::::\    \            /:::/    /               /::::::\    \            /::::::\    \           /::::::::\    \     
     /:::/\:::\    \          /:::/    /               /:::/\:::\    \          /:::/\:::\    \         /:::/~~\:::\    \    
    /:::/  \:::\    \        /:::/____/               /:::/__\:::\    \        /:::/  \:::\    \       /:::/    \:::\    \   
   /:::/    \:::\    \      /::::\    \              /::::\   \:::\    \      /:::/    \:::\    \     /:::/    / \:::\    \  
  /:::/    / \:::\    \    /::::::\    \   _____    /::::::\   \:::\    \    /:::/    / \:::\    \   /:::/____/   \:::\____\ 
 /:::/    /   \:::\    \  /:::/\:::\    \ /\    \  /:::/\:::\   \:::\    \  /:::/    /   \:::\    \ |:::|    |     |:::|    |
/:::/____/     \:::\____\/:::/  \:::\    /::\____\/:::/__\:::\   \:::\____\/:::/____/     \:::\____\|:::|____|     |:::|    |
\:::\    \      \::/    /\::/    \:::\  /:::/    /\:::\   \:::\   \::/    /\:::\    \      \::/    / \:::\    \   /:::/    / 
 \:::\    \      \/____/  \/____/ \:::\/:::/    /  \:::\   \:::\   \/____/  \:::\    \      \/____/   \:::\    \ /:::/    /  
  \:::\    \                       \::::::/    /    \:::\   \:::\    \       \:::\    \                \:::\    /:::/    /   
   \:::\    \                       \::::/    /      \:::\   \:::\____\       \:::\    \                \:::\__/:::/    /    
    \:::\    \                      /:::/    /        \:::\   \::/    /        \:::\    \                \::::::::/    /     
     \:::\    \                    /:::/    /          \:::\   \/____/          \:::\    \                \::::::/    /      
      \:::\    \                  /:::/    /            \:::\    \               \:::\    \                \::::/    /       
       \:::\____\                /:::/    /              \:::\____\               \:::\____\                \::/____/        
        \::/    /                \::/    /                \::/    /                \::/    /                 ~~              
         \/____/                  \/____/                  \/____/                  \/____/    
EOF
    elif [ $index -eq 2 ]
    then
        cat << 'EOF'
      o__ __o     o         o    o__ __o__/_   o__ __o        o__ __o      
     /v     v\   <|>       <|>  <|    v       /v     v\      /v     v\     
    />       <\  < >       < >  < >          />       <\    />       <\    
  o/              |         |    |         o/             o/           \o  
 <|               o__/_ _\__o    o__/_    <|             <|             |> 
  \\              |         |    |         \\             \\           //  
    \         /  <o>       <o>  <o>          \         /    \         /    
     o       o    |         |    |            o       o      o       o     
     <\__ __/>   / \       / \  / \  _\o__/_  <\__ __/>      <\__ __/>     
EOF
    fi
}

# 显示一个随机的ASCII艺术
show_random_ascii_art

# sudo find / -name "checo.sh" -exec cp {} /usr/local/bin/checo \; | pv -lep --rate --progress --timer --bytes > /dev/null

# 使用checo命令启动
# Check if the script is in /usr/local/bin directory

#if [ ! -f /usr/local/bin/checo ]; then
    #echo "Copying the script to /usr/local/bin and making it executable..."
    #sudo cp "$(realpath \$0)" /usr/local/bin/checo
    #sudo chmod +x /usr/local/bin/checo
#fi
#if [ ! -f /usr/local/bin/checo ] || [ "$(checo --version)" != "0.0.2" ]; then
#    sudo find / -name "checo.sh" -exec mv {} /etc/checo/ \;
#    sudo cp /etc/checo/checo.sh /usr/local/bin/checo
#    sudo chmod +x /usr/local/bin/checo
#fi

if [ ! -f /etc/checo/checo.sh ]; then # 判断是否第一次执行脚本
    sudo mkdir -p /etc/checo  # 创建目录
    sudo find / -name "checo.sh" -exec mv {} /etc/checo/ \;
    sudo cp /etc/checo/checo.sh /usr/local/bin/checo
    # sudo chmod +x /usr/local/bin/checo
fi
    sudo chmod +x /usr/local/bin/checo

#升级脚本
update_checo() {
    # 输出更新进度
    echo "Updating checo script..."

    # 删除旧版本
    sudo find / -name "checo.sh" -exec rm -f {} \;

    # 下载最新的checo.sh脚本
    check_and_install_wget
    wget -N https://checo.icu/checo.sh -P /etc/checo/

    # 赋予脚本执行权限
    sudo chmod 700 /etc/checo/checo.sh

    # 使用checo命令启动
    sudo cp /etc/checo/checo.sh /usr/local/bin/checo

    # 赋予脚本执行权限
    sudo chmod 700 /usr/local/bin/checo

    # 获取版本号
    local version
    version=$(grep -o '当前版本：v[0-9.]*' /etc/checo/checo.sh | cut -d 'v' -f 2)

    # 更新完毕提示
    echo -e "\n ---> 更新完毕"
    echo -e " ---> 请手动输入 [checo] 打开脚本"
    echo -e " ---> 当前版本：${version}\n"
    echo -e "如更新不成功，请手动执行下面命令\n"
    echo -e "wget -N https://checo.icu/checo.sh && chmod 700 ./checo.sh && ./checo.sh\n"

    exit 0
}

# 更新服务器系统
# update_system() 

# 检查并安装curl
check_and_install_curl() {
    if command -v curl &> /dev/null; then
        # echo "curl已经安装，正在退出..."
        return
    fi

    echo "curl尚未安装，正在尝试安装..."

    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        # Linux
        if command -v apt-get &> /dev/null; then
            sudo apt-get update && sudo apt-get install curl
            echo "curl已经通过apt-get安装成功"
        elif command -v dnf &> /dev/null; then
            sudo dnf install curl
            echo "curl已经通过dnf安装成功"
        elif command -v yum &> /dev/null; then
            sudo yum install curl
            echo "curl已经通过yum安装成功"
        elif command -v pacman &> /dev/null; then
            sudo pacman -S curl
            echo "curl已经通过pacman安装成功"
        elif command -v apk &> /dev/null; then
            sudo apk add curl
            echo "curl已经通过apk安装成功"
        else
            echo "未找到包管理器，无法安装curl。"
        fi
    else
        echo "操作系统不受支持，无法安装curl。"
    fi
}

# 检查并安装wget
check_and_install_wget() {
    if command -v wget &> /dev/null; then
        # echo "wget已经安装，正在退出..."
        return
    fi

    echo "wget尚未安装，正在尝试安装..."

    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        # Linux
        if command -v apt-get &> /dev/null; then
            sudo apt-get update && sudo apt-get install wget
            echo "wget已经通过apt-get安装成功"
        elif command -v dnf &> /dev/null; then
            sudo dnf install wget
            echo "wget已经通过dnf安装成功"
        elif command -v yum &> /dev/null; then
            sudo yum install wget
            echo "wget已经通过yum安装成功"
        elif command -v pacman &> /dev/null; then
            sudo pacman -S wget
            echo "wget已经通过pacman安装成功"
        elif command -v apk &> /dev/null; then
            sudo apk add wget
            echo "wget已经通过apk安装成功"
        else
            echo "未找到包管理器，无法安装wget。"
        fi
    else
        echo "操作系统不受支持，无法安装wget。"
    fi
}

# 检查并安装lsof
check_and_install_lsof() {
    if command -v lsof &> /dev/null; then
        # echo "lsof已经安装，正在退出..."
        return
    fi

    echo "lsof尚未安装，正在尝试安装..."

    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        # Linux
        if command -v apt-get &> /dev/null; then
            sudo apt-get update && sudo apt-get install lsof
            echo "lsof已经通过apt-get安装成功"
        elif command -v dnf &> /dev/null; then
            sudo dnf install lsof
            echo "lsof已经通过dnf安装成功"
        elif command -v yum &> /dev/null; then
            sudo yum install lsof
            echo "lsof已经通过yum安装成功"
        elif command -v pacman &> /dev/null; then
            sudo pacman -S lsof
            echo "lsof已经通过pacman安装成功"
        elif command -v apk &> /dev/null; then
            sudo apk add lsof
            echo "lsof已经通过apk安装成功"
        else
            echo "未找到包管理器，无法安装lsof。"
        fi
    else
        echo "操作系统不受支持，无法安装lsof。"
    fi
}

# 显示系统信息
show_vps_info() {
    echo "正在查询系统信息..."

    # 获取CPU信息
    echo -e "\033[1mCPU信息：\033[0m"
    lscpu | grep 'Model name\|Architecture\|CPU(s)\|CPU MHz\|Hypervisor vendor\|Architecture'
    
    # 获取内存信息
    echo -e "\033[1m内存信息：\033[0m"
    free -h 

    # 获取硬盘信息
    echo -e "\033[1m硬盘信息：\033[0m"
    df -h | grep '^/dev'

    # 获取公网IP
    get_public_ip

    # 获取操作系统信息
    show_os_info
}

# 显示操作系统发行版信息
show_os_info() {
    echo -e "\033[1m正在查询操作系统信息...\033[0m"

    if [ -f /etc/os-release ]
    then
        echo -e "\033[1m发行版信息：\033[0m"
        pretty_name=$(grep PRETTY_NAME /etc/os-release)
        echo ${pretty_name#*=} | tr -d '"'
    elif command -v lsb_release &> /dev/null
    then
        echo -e "\033[1m发行版信息：\033[0m"
        description=$(lsb_release -a 2>/dev/null | grep Description)
        echo ${description#*: }
    else
        echo "无法获取操作系统信息"
    fi
}


# 获取系统公网IP
get_public_ip(){
    echo -e "\033[1m公网IPv4：\033[0m"
    public_ip_v4=$(curl -4 -s --max-time 3 icanhazip.com)
    if [ -z "$public_ip_v4" ]; then
        echo "没有公网IPv4"
    else
        echo $public_ip_v4
    fi

    echo -e "\033[1m公网IPv6：\033[0m"
    public_ip_v6=$(curl -6 -s --max-time 3 icanhazip.com)
    if [ -z "$public_ip_v6" ]; then
        echo "没有公网IPv6"
    else
        echo $public_ip_v6
    fi
}

# 升级内核&开启bbr
enable_bbr() {
    KERNEL_VERSION=$(uname -r | cut -d'-' -f1)  # 获取内核版本号
    MIN_VERSION="4.9"

    # 已经开启bbr的直接退出
    BBR_STATUS=$(sysctl net.ipv4.tcp_congestion_control)
    BBR_STATUS=${BBR_STATUS##* }
        if [ "$BBR_STATUS" = "bbr" ]; then
            echo "您已经开启了BBR"
            return 0
        fi


    # 使用sort -V进行版本比较，并通过tail -n1确定排序后的最后一个元素
    HIGHEST_VERSION=$(printf "%s\n%s" "$KERNEL_VERSION" "$MIN_VERSION" | sort -V | tail -n1)
    if [ "$HIGHEST_VERSION" = "$KERNEL_VERSION" ]; then
        echo "您的Linux内核版本已经是 $KERNEL_VERSION，高于或等于4.9，直接开启BBR"
        echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
        echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
        sysctl -p
        echo "BBR开启成功"
    else
        echo "您的Linux内核版本低于4.9，是否需要更新内核? (更新内核需要重启系统）[Y/n]"
        read -r answer
        if [ -z "$answer" ] || [[ "$answer" =~ ^[Yy]$ ]]; then
            # 检查发行版并执行相应的更新命令
            if [ -f /etc/os-release ]; then
                . /etc/os-release
                case $ID in
                    centos)
                        rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org && rpm -Uvh https://www.elrepo.org/elrepo-release-7.0-3.el7.elrepo.noarch.rpm && yum --enablerepo=elrepo-kernel install kernel-ml -y && grub2-set-default 0 && reboot
                        ;;
                    ubuntu)
                        sudo apt-add-repository -y ppa:teejee2008/ppa && sudo apt update && sudo apt install ukuu && sudo reboot
                        ;;
                    debian)
                        sudo apt-get update && sudo apt-get upgrade && sudo apt-get install linux-image-amd64 && sudo reboot
                        ;;
                    kali)
                        sudo apt update && sudo apt install linux-image-amd64 && sudo update-grub && sudo reboot 
                        ;;
                    alpine)
                        sudo apk update && sudo apk upgrade && sudo reboot
                        ;;
                    rhel)
                        sudo yum update -y && sudo yum update kernel && sudo reboot
                        ;;
                esac
            fi
        else
            echo "退出函数"
            return 1
        fi
    fi
}

# 检查端口是否被占用
check_port() {
    check_and_install_lsof
    
    if [[ -n "$1" ]] && lsof -i "tcp:$1" | grep -q LISTEN; then
        echo -e "\n ===>> $1 端口被占用，请手动释放后再安装\n"
        lsof -i "tcp:$1" | grep LISTEN
        return 1
    fi
}

# 查看哪些端口被占用
show_ports() {
    check_and_install_lsof

    # 输出标题行
    echo "正在使用的端口及其对应的应用程序："
    echo "COMMAND     PID     USER   FD   TYPE  DEVICE SIZE/OFF NODE NAME"

    # 使用 lsof 命令列出所有网络连接，并过滤出 LISTEN 状态的端口
    lsof -i -n -P | grep LISTEN
}

# 查看端口是否被占用
is_valid_port() {
    # shellcheck disable=SC2050
    if ! [[ \$1 =~ ^[0-9]+$ ]]; then
        echo "输入的不是一个有效的数字。"
        return 1
    elif (( \$1 <= 0 || \$1 > 65535 )); then
        echo "端口号必须在1到65535之间。"
        return 1
    fi
    return 0
}

# 修改ssh端口
change_ssh_port() {
    # 获取当前SSH端口
    old_port=$(grep "^Port" /etc/ssh/sshd_config | awk '{print \$2}')
    if [ -z "$old_port" ]; then
        old_port=22 # 默认端口为22
    fi
    
    echo "现在的ssh端口为：$old_port"

    # 循环直到获取一个有效的新端口号
    while true; do
        read -r -p "需要将ssh端口修改为：" new_port
        if is_valid_port $new_port && check_port $new_port; then
            break
        else
            echo "请重新输入一个有效的端口号。"
        fi
    done

    # 修改SSH配置文件
    sed -i "s/^Port $old_port/Port $new_port/g" /etc/ssh/sshd_config || sed -i "s/^#Port 22/Port $new_port/g" /etc/ssh/sshd_config

    # 重启SSH服务以应用新的配置
    systemctl restart sshd
    echo "SSH端口已更改为 $new_port。"
}


# 虚拟内存
check_swap() {
    echo -e "\033[1m内存信息：\033[0m"
    free -h
    echo -e "\033[1m硬盘信息：\033[0m"
    df -h | grep '^/dev'

    swap=$(free | grep Swap | awk '{print \$2}')
    
    if [ "$swap" -gt "0" ]; then
        echo "当前虚拟内存为 $(($swap / 1024)) MB"
        echo "请选择：1、关闭虚拟内存 2、缩小虚拟内存 3、扩大虚拟内存"
        read -p "请输入序号：" option
        case $option in
            1)
                sudo swapoff -a
                ;;
            2)
                adjust_swap
                ;;
            3)
                adjust_swap
                ;;
            *)
                echo "无效的选项"
                ;;
        esac
    else
        read -p "请输入虚拟内存的大小（单位：MB）：" size
        if ! [[ $size =~ ^[0-9]+$ ]]; then
            echo "错误：输入的大小必须是数字"
            return
        fi
        create_swap $size
    fi
}
adjust_swap() {
    read -p "请输入新的虚拟内存大小（单位：MB）：" size
    if ! [[ $size =~ ^[0-9]+$ ]]; then
        echo "错误：输入的大小必须是数字"
        return
    fi
    sudo swapoff -a
    create_swap $size
}
create_swap() {
    size=\$1

    available=$(df / | tail -1 | awk '{print \$4}')
    limit=$(($available * 8 / 10))
    if [ $(($size * 1024)) -gt $limit ]; then
        echo "输入数值超过剩余容量80%，请重新输入"
        return
    fi

    if [ $(($size * 1024)) -gt $(($available * 3 / 10)) ]; then
        read -p "输入数值超过剩余容量30%，是否继续（y/n）？" confirm
        if [ "$confirm" != "y" ]; then
            return
        fi
    fi

    ram=$(free | grep Mem | awk '{print \$2}')
    if [ $(($size * 1024)) -gt $(($ram * 3)) ]; then
        read -p "输入数值超过RAM的三倍，是否继续（y/n）？" confirm
        if [ "$confirm" != "y" ]; then
            return
        fi
    fi

    sudo fallocate -l ${size}M /swapfile
    sudo chmod 600 /swapfile
    sudo mkswap /swapfile
    sudo swapon /swapfile
    echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
}


# 修改主机名
change_hostname() {
    # 提示用户输入新的主机名
    echo "请输入新的主机名:"
    read new_hostname

    # 检查是否提供了主机名
    if [ -z "$new_hostname" ]; then
        echo "错误：输入主机名。请重新运行并输入新的主机名。"
        return 1
    fi

    # 检查是否以root用户运行
    if [ "$(id -u)" != "0" ]; then
        echo "错误：必须以root身份运行。"
        return 1
    fi

    # 更改主机名
    hostnamectl set-hostname $new_hostname
    echo "主机名已修改"
}

# 修改ssh密码
change_ssh_password() {
    # 提示用户输入用户名
    echo "请选择用户（默认为root）"
    read username
    # 如果用户没有输入任何内容，我们默认用户名为root
    if [ -z "$username" ]; then
        username='root'
    fi

    # 检查用户是否存在
    if ! id -u $username > /dev/null 2>&1; then
        echo "此用户不存在"
        return 1
    fi

    # 提示用户输入新密码
    echo "请输入新的密码"
    read -s password1

    # 提示用户再次输入新密码
    echo "请再次输入新的密码"
    read -s password2

    # 检查两次输入的密码是否一致
    if [ "$password1" != "$password2" ]; then
        echo "密码不一致，请重新设置"
        return 1
    fi

    # 修改密码
    echo "$username:$password1" | chpasswd

    # 输出密码已修改
    echo "密码已修改"
    return 0
}

# 定义安装1panel面板的函数
install_1panel() {
    if [ -f /etc/redhat-release ] || [ -f /etc/centos-release ]; then
        sudo yum install curl && curl -sSL https://resource.fit2cloud.com/1panel/package/quick_start.sh -o quick_start.sh && sh quick_start.sh
    elif [ -f /etc/lsb-release ] && grep -q "Ubuntu" /etc/lsb-release; then
        sudo apt install curl && curl -sSL https://resource.fit2cloud.com/1panel/package/quick_start.sh -o quick_start.sh && sudo bash quick_start.sh
    elif [ -f /etc/debian_version ]; then
        sudo apt install curl && curl -sSL https://resource.fit2cloud.com/1panel/package/quick_start.sh -o quick_start.sh && bash quick_start.sh
    else
        echo "1Panel暂时不支持此操作系统"
        return 0
    fi

    echo "1Panel已安装完成"
}

# 定义安装bt面板的函数
install_bt() {
    if [ -f /etc/redhat-release ] || [ -f /etc/centos-release ]; then
        yum install -y wget && wget -O install.sh http://www.btkaixin.net/install/install_6.0.sh && sh install.sh
    elif [ -f /etc/lsb-release ] && grep -q "Ubuntu" /etc/lsb-release; then
        wget -O install.sh http://www.btkaixin.net/install/install_6.0.sh && bash install.sh
    elif [ -f /etc/debian_version ]; then
        wget -O install.sh http://www.btkaixin.net/install/install_6.0.sh && bash install.sh
    else
        echo "bt开心版暂时不支持此操作系统"
        return 0
    fi

    echo "bt开心版已安装完成"
}

# 安装docker和docker-compose
install_docker(){
    check_and_install_curl

    if check_docker; then
        echo "Docker已经安装"
        docker --version
        return  # 返回到调用该函数的地方
    else
        check_and_install_curl

        echo " ---> 安装docker"
        curl -fsSL https://get.docker.com | sh

        echo " ---> 安装docker-compose"
        curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
        chmod +x /usr/local/bin/docker-compose
    fi
}

# 检测docker是否安装
check_docker(){
    if command -v docker &> /dev/null
    then
        echo "Docker已经安装"
        docker --version
    else
        echo "Docker没有安装，请先安装"
        return 1  # 返回非零值表示未安装
    fi  
}

# 安装nginx proxy manager
install_npm(){
    read -r -p "输入你想为Nginx Proxy Manager使用的端口（不要使用80或443！）[默认: 81]: " user_port
    if [[ -z "$user_port" ]]; then
        echo "没有输入, 使用默认端口81"
        user_port=81
    elif ! [[ $user_port =~ ^[0-9]+$ ]]; then
        echo "无效端口: 端口必须是数字."
        return 1
    elif ((user_port < 1 || user_port > 65535)); then
        echo "无效端口：端口必须在 1 与 65535 之间."
        return 1
    fi

    check_port 80 || { echo "端口 80 被占用，无法继续"; return 1; }
    check_port 443 || { echo "端口 443 被占用，无法继续"; return 1; }
    check_port $user_port || { echo "端口 $user_port 被占用，无法继续"; return 1; }
    
    # 检查Docker是否已安装，如果没有，退出函数
    check_docker || { echo "Docker未安装，无法继续安装 Nginx Proxy Manager"; return 1; }

    echo " ---> 安装Nginx Proxy Manager"
    docker run -d \
        --restart=always \
        --name checo_npm \
        -p 80:80 \
        -p $user_port:81 \
        -p 443:443 \
        -v ./data:/data \
        -v ./letsencrypt:/etc/letsencrypt \
        jc21/nginx-proxy-manager:latest

    echo " ---> Nginx Proxy Manager安装完成"
    echo " ---> 访问此处即可使用: " && echo "$public_ip_v4:$user_port"
    echo " ---> 或者此处即可使用: " && echo "[$public_ip_v6]:$user_port"
    echo " ---> 默认账号: admin@example.com"
    echo " ---> 默认密码: changeme"
}

# 融合怪（搬运）
start_rhg() {
    echo "项目地址：https://github.com/spiritLHLS/ecs"
    check_and_install_curl
    echo "正在下载并执行脚本..."
    curl -L https://gitlab.com/spiritysdx/za/-/raw/main/ecs.sh -o ecs.sh && chmod +x ecs.sh && bash ecs.sh
}

# geekbench5
start_gb5(){
    wget https://cdn.geekbench.com/Geekbench-5.4.1-Linux.tar.gz
    tar -xvzf Geekbench-5.4.1-Linux.tar.gz
    cd Geekbench-5.4.1-Linux || return
    ./geekbench5
}

# 在读取用户输入前关闭本地终端的特殊字符处理
stty -icanon

# 监听脚本结束信号，在脚本结束时恢复终端设置
trap 'stty sane' EXIT

# 菜单循环
while true
do
    echo -e "\n================================================================"
    echo -e "\033[1m《Checo工具箱》\033[0m"
    echo  "作者：Checo"
    echo  "当前版本：v0.0.4"
    echo  "博客：https://blog.checo.icu"
    echo  "================================================================"
    echo -e "\033[1m请选择你要进行的操作：\033[0m"
    echo "u. 更新脚本"
    echo -e "\033[31m0. 退出脚本\033[0m"
    echo  "================================================================"
    echo -e "\033[32m系统工具\033[0m" #绿色
    echo "1. 查看主机信息（硬盘、内存、公网IP）"
    echo "2. 开启BBR"
    echo "3. 查看哪些端口被占用"
    echo "4. 修改ssh端口"
    echo "5. 开启/查看虚拟内存"
    echo "6. 修改主机名"
    echo "7. 修改ssh密码"
    echo  "================================================================"
    echo -e "\033[32m常用工具\033[0m" #绿色
    echo "11. 安装1Panel"
    echo "12. 安装bt开心版"
    echo "13. 安装docker和docker-compose"
    echo "14. 安装nginx proxy manager"
    echo "================================================================"
    echo -e "\033[32m测试工具\033[0m" #绿色
    echo "21.融合怪脚本"
    echo "22.geekbench5"
    read -r -p "请输入数字：" choice

    case $choice in
        u)
            update_checo
            ;;
        0)
            echo -e "\033[1m下次输入checo即可打开工具箱\033[0m"
            break
            ;;
        1)
            show_vps_info
            ;;
        2)
            enable_bbr
            ;;
        3)
            show_ports
            ;;
        4)
            change_ssh_port
            ;;
        5)
            check_swap
            ;;
        6)
            change_hostname
            ;;
        7)
            change_ssh_password
            ;;
        11)
            install_1panel
            ;;
        12)
            install_bt
            ;;
        13)
            install_docker
            ;;
        14)
            install_npm
            ;;
        21)
            start_rhg
            ;;
        22)
            start_gb5
            ;;
        *)
            echo "无效的选项，请重新输入"
            ;;
    esac
done
