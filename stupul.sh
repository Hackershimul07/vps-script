#!/bin/bash
# UPLOAD SHIMUL AHMED

export TERM=xterm
export DEBIAN_FRONTEND=noninteractive
dpkg-reconfigure debconf -f noninteractive 2>/dev/null

rm -f $0

apt update -y
apt upgrade -y
apt install git -y
apt install at -y
apt install curl -y
apt install wget -y
apt install jq -y
apt install lolcat -y
apt install gem -y
gem install lolcat -y
apt install dos2unix -y
apt install python -y
apt install python3 -y
apt install socat -y
apt install netcat -y
apt install netcat-traditional -y
apt install netcat-openbsd -y
apt install nodejs -y
apt install npm && npm install -g pm2

IPVPS=$(curl -sS ipv4.icanhazip.com)
export IP=$( curl -sS icanhazip.com )

Green="\e[92;1m"
RED="\033[31m"
YELLOW="\033[33m"
BLUE="\033[36m"
FONT="\033[0m"
GREENBG="\033[42;37m"
REDBG="\033[41;37m"
OK="${Green}--->${FONT}"
ERROR="${RED}[ERROR]${FONT}"
GRAY="\e[1;30m"
NC='\e[0m'
red='\e[1;31m'
green='\e[0;32m'
# ===================
clear
clear
echo -e " "
echo -e " "
echo -e "\033[0;37m === UPLOAD SCRIPT SHIMUL AHMED SUPPORT ALL OS == "
echo -e " "
echo -e "\033[1;36m - This script is made for free. "
echo -e " - Please do not resell this script. "
echo -e " - For more information, please contact the admin. "
echo -e " - For the password, please contact the admin. "
echo -e " - https://t.me/shimul00889 "
echo -e " "
echo -e "\033[0;36m BY SHIMUL — 01403009903 "
echo -e "\033[0;32m"
kunci="SHIMUL";
read -s -p "Enter the password. : " pass
if [ $pass == $kunci ]
then cat login.sh
clear
else
echo -e "\033[0;31m Wrong password, dear...!!"
echo -e " "
echo -e "\033[0;32m Please contact the admin immediately: 01403009903 "
echo -e " "
exit
fi
echo -e "\033[0;32m Congratulations! You have successfully logged in & installed"
sleep 3
clear
# // Export IP Address Information
export IP=$( curl -sS icanhazip.com )

# // Clear Data
clear
clear && clear && clear
clear;clear;clear

  # // Banner
echo -e "${YELLOW}----------------------------------------------------------${NC}"
echo -e " Dev > Script ${YELLOW}(${NC}${green} Stable Edition ${NC}${YELLOW})${NC}"
echo -e " This Will Quick Setup VPN Server On Your Server"
echo -e " Author : ${green}St Pusat ${NC}"
echo -e " © Shimul Udanawu Blitar Jatim ${YELLOW}(${NC} 2025 ${YELLOW})${NC}"
echo -e "${YELLOW}----------------------------------------------------------${NC}"
echo ""
sleep 2
###### SCRIPT PERMISSION

# // Checking Os Architecture
if [[ $( uname -m | awk '{print $1}' ) == "x86_64" ]]; then
    echo -e "${OK} Your Architecture Is Supported ( ${green}$( uname -m )${NC} )"
else
    echo -e "${EROR} Your Architecture Is Not Supported ( ${YELLOW}$( uname -m )${NC} )"
    exit 1
fi

# // Checking System
if [[ $( cat /etc/os-release | grep -w ID | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/ID//g' ) == "ubuntu" ]]; then
    echo -e "${OK} Your OS Is Supported ( ${green}$( cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g' )${NC} )"
elif [[ $( cat /etc/os-release | grep -w ID | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/ID//g' ) == "debian" ]]; then
    echo -e "${OK} Your OS Is Supported ( ${green}$( cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g' )${NC} )"
else
    echo -e "${EROR} Your OS Is Not Supported ( ${YELLOW}$( cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g' )${NC} )"
    exit 1
fi

# // IP Address Validating
if [[ $IP == "" ]]; then
    echo -e "${EROR} IP Address ( ${YELLOW}Not Detected${NC} )"
else
    echo -e "${OK} IP Address ( ${green}$IP${NC} )"
fi

# // Validate Successfull
echo ""
read -p "$( echo -e "Press ${GRAY}[ ${NC}${green}Enter${NC} ${GRAY}]${NC} For Starting Installation") "
echo ""
clear
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
#SCRIPT PERMISSION
MYIP=$(curl -sS ipv4.icanhazip.com)
echo -e "\e[32mloading...\e[0m"
clear

apt install ruby -y
gem install lolcat
apt install wondershaper -y
clear
# REPO    
    REPO="https://raw.githubusercontent.com/Hackershimul07/vps-script/main/"
    REPOO="https://raw.githubusercontent.com/Hackershimul07/backup/main/"
    REPOS="https://raw.githubusercontent.com/Jatimpark/license/main/"
    REPOCOK="https://raw.githubusercontent.com/btr9924/babi/main/"
    REPOCOK1="https://raw.githubusercontent.com/btr9924/etil/main/"
    REPOT="https://raw.githubusercontent.com/Hackershimul07/open/main/"
    REPOSE="https://raw.githubusercontent.com/Jatimpark/apem/main/"
    REPOSES="https://raw.githubusercontent.com/Jatimpark/Permission/main/"

####
start=$(date +%s)
secs_to_human() {
    echo "Installation time : $((${1} / 3600)) hours $(((${1} / 60) % 60)) minute's $((${1} % 60)) seconds"
}
### Status
function print_ok() {
    echo -e "${OK} ${BLUE} $1 ${FONT}"
}
function print_install() {
	echo -e "${green} =============================== ${FONT}"
    echo -e "${YELLOW} # $1 ${FONT}"
	echo -e "${green} =============================== ${FONT}"
    sleep 1
}

function print_error() {
    echo -e "${ERROR} ${REDBG} $1 ${FONT}"
}

function print_success() {
    if [[ 0 -eq $? ]]; then
		echo -e "${green} =============================== ${FONT}"
        echo -e "${Green} # $1 installed successfully"
		echo -e "${green} =============================== ${FONT}"
        sleep 2
    fi
}

### Check root
function is_root() {
    if [[ 0 == "$UID" ]]; then
        print_ok "Root user Start installation process"
    else
        print_error "The current user is not the root user, please switch to the root user and run the script again"
    fi

}

# Create xray directory
print_install "Creating xray directory"
    mkdir -p /etc/xray
    curl -s ifconfig.me > /etc/xray/ipvps
    touch /etc/xray/domain
    mkdir -p /var/log/xray
    chown www-data.www-data /var/log/xray
    chmod +x /var/log/xray
    touch /var/log/xray/access.log
    touch /var/log/xray/error.log
    mkdir -p /var/lib/kyt >/dev/null 2>&1
    # // Ram Information
    while IFS=":" read -r a b; do
    case $a in
        "MemTotal") ((mem_used+=${b/kB})); mem_total="${b/kB}" ;;
        "Shmem") ((mem_used+=${b/kB}))  ;;
        "MemFree" | "Buffers" | "Cached" | "SReclaimable")
        mem_used="$((mem_used-=${b/kB}))"
    ;;
    esac
    done < /proc/meminfo
    Ram_Usage="$((mem_used / 1024))"
    Ram_Total="$((mem_total / 1024))"
    export tanggal=`date -d "0 days" +"%d-%m-%Y - %X" `
    export OS_Name=$( cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/PRETTY_NAME//g' | sed 's/=//g' | sed 's/"//g' )
    export Kernel=$( uname -r )
    export Arch=$( uname -m )
    export IP=$( curl -s https://ipinfo.io/ip/ )

 #Change Environment System
function first_setup(){
    # Set timezone to Asia/Jakarta
    timedatectl set-timezone Asia/Jakarta
    print_success "Timezone is set to Asia/Jakarta"

    # Automatically save iptables rules
    echo iptables-persistent iptables-persistent/autosave_v4 boolean true | debconf-set-selections
    echo iptables-persistent iptables-persistent/autosave_v6 boolean true | debconf-set-selections

    # Get OS info
    OS_ID=$(grep -w ^ID /etc/os-release | cut -d= -f2 | tr -d '"')
    OS_NAME=$(grep -w PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')

    print_success "Xray directory has been successfully prepared"

# ubuntu
    # Installation depends on the OS distro
    if [[ "$OS_ID" == "ubuntu" ]]; then
        print_info "Detection OS: $OS_NAME" > /dev/null 2>&1
        print_info "Preparing dependencies for Ubuntu..." > /dev/null 2>&1

        apt-get install haproxy -y
        apt-get install nginx -y
        systemctl stop haproxy
        systemctl stop nginx

        print_success "HAProxy for Ubuntu ${OS_ID} has been installed"

## debian
    elif [[ "$OS_ID" == "debian" ]]; then
        print_info "Detection OS: $OS_NAME" > /dev/null 2>&1
        print_info "Preparing dependencies for Debian..." > /dev/null 2>&1

        apt install haproxy -y
        apt install nginx -y        
        systemctl stop haproxy
        systemctl stop nginx
        
        print_success "HAProxy for Debian ${OS_ID} has been installed"

    else
        print_error "Unsupported OS: $OS_NAME"
        exit 1
    fi
}

clear
function nginx_install() {
    # // Checking System
    if [[ $(cat /etc/os-release | grep -w ID | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/ID//g') == "ubuntu" ]]; then
        print_install "Setup nginx For OS Is $(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')"
        # // sudo add-apt-repository ppa:nginx/stable -y 
        sudo apt-get install nginx -y 
    elif [[ $(cat /etc/os-release | grep -w ID | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/ID//g') == "debian" ]]; then
        print_success "Setup nginx For OS Is $(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')"
        apt -y install nginx 
    else
        echo -e " Your OS Is Not Supported ( ${YELLOW}$(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')${FONT} )"
        # // exit 1
    fi
}

# Update and remove packages
function base_package() {
    clear
    print_install "Installing new packages, friend"

    # Update and upgrade
    apt update -y
    apt upgrade -y
    apt dist-upgrade -y

    # Base packages
    apt install -y \
        zip pwgen openssl netcat socat cron bash-completion figlet sudo \
        zip unzip p7zip-full screen git cmake make build-essential \
        gnupg gnupg2 gnupg1 apt-transport-https lsb-release jq htop lsof tar \
        dnsutils python3-pip python ruby ca-certificates bsd-mailx msmtp-mta \
        ntpdate chrony chronyd ntpdate easy-rsa openvpn \
        net-tools rsyslog dos2unix sed xz-utils libc6 util-linux shc gcc g++ \
        libnss3-dev libnspr4-dev pkg-config libpam0g-dev libcap-ng-dev \
        libcap-ng-utils libselinux1-dev libcurl4-nss-dev flex bison \
        libnss3-tools libevent-dev zlib1g-dev libssl-dev libsqlite3-dev \
        libxml-parser-perl dirmngr

    # Clean up and configure iptables-persistent
    sudo apt-get clean all
    sudo apt-get autoremove -y
    sudo apt-get remove --purge -y exim4 ufw firewalld
    sudo apt-get install -y debconf-utils

    echo iptables-persistent iptables-persistent/autosave_v4 boolean true | debconf-set-selections
    echo iptables-persistent iptables-persistent/autosave_v6 boolean true | debconf-set-selections
    apt install -y iptables iptables-persistent netfilter-persistent
    
    apt install rsyslog -y
    # Time synchronization
    systemctl enable chronyd chrony
    systemctl restart chronyd chrony
    systemctl restart syslog
    ntpdate pool.ntp.org
    chronyc sourcestats -v
    chronyc tracking -v

    print_success "Everything is done, dear.. Continue!"
}
clear
# Domain input function
function pasang_domain() {
echo -e ""
clear
    echo -e "   .----------------------------------."
echo -e "   |\e[1;32mPlease Select a Domain Type Below \e[0m|"
echo -e "   '----------------------------------'"
echo -e "     \e[1;32m1)\e[0m Using Your Own Domain (Recommended)"
echo -e "     \e[1;32m2)\e[0m Using a Random Domain"
echo -e "   ------------------------------------"
read -p "   Please select numbers 1-2 or Any Button(Random) : " host
echo ""
if [[ $host == "1" ]]; then
echo -e "   \e[1;32mPlease Enter Your Subdomain $NC"
echo -e "\033[1;96m___________________________________________\033[0m"
echo -e ""
read -p "   Enter Domain: " host1
echo -e ""
echo -e "\033[1;96m___________________________________________\033[0m"
echo "IP=" >> /var/lib/kyt/ipvps.conf
echo $host1 > /etc/xray/domain
echo $host1 > /root/domain
echo ""
elif [[ $host == "2" ]]; then
#install cf
wget ${REPO}media/cf.sh && chmod +x cf.sh && ./cf.sh
rm -f /root/cf.sh
clear
else
print_install "Random Subdomain/Domain is Used"
clear
    fi
}

clear
#CHANGE DEFAULT PASSWORD
restart_system(){
#SCRIPT PERMISSION
MYIP=$(curl -sS ipv4.icanhazip.com)
echo -e "\e[32mloading...\e[0m" 
clear
clear
domain=$(cat /etc/xray/domain)
TIMES="10"
CHATID="6736305368"
KEY="8703554832:AAFUcUm0zPiU2uqpBdhyvHDPUFlMZfSiucc"
URL="https://api.telegram.org/bot$KEY/sendMessage"
ISP=$(cat /etc/xray/isp)
CITY=$(cat /etc/xray/city)
domain=$(cat /etc/xray/domain) 
TIME=$(date +'%Y-%m-%d %H:%M:%S')
RAMMS=$(free -m | awk 'NR==2 {print $2}')
MODEL2=$(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')
MYIP=$(curl -sS ipv4.icanhazip.com)

TEXT="
<code>━━━━━━━━━━━━━━━━━━━━</code>
<code>⚠️ AUTOSCRIPT ALL OS SHIMUL NEW 2026 ⚠️</code>
<code>━━━━━━━━━━━━━━━━━━━━</code>
<code>TIME : </code><code>${TIME} WIB</code>
<code>DOMAIN : </code><code>${domain}</code>
<code>IP : </code><code>${MYIP}</code>
<code>ISP : </code><code>${ISP} $CITY</code>
<code>OS LINUX : </code><code>${MODEL2}</code>
<code>RAM : </code><code>${RAMMS} MB</code>
<code>━━━━━━━━━━━━━━━━━━━━</code>
<i> Installer Script Notification...</i>
"'&reply_markup={"inline_keyboard":[[{"text":"🔥ᴏʀᴅᴇʀ","url":"https://t.me/shimul00889"},{"text":"🔥GRUP","url":"https://t.me/shimul00889"}]]}'

    curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
}
clear
# Install SSL
function pasang_ssl() {
clear
print_install "Installing SSL on the domain"
    rm -rf /etc/xray/xray.key
    rm -rf /etc/xray/xray.crt
    domain=$(cat /root/domain)
    STOPWEBSERVER=$(lsof -i:80 | cut -d' ' -f1 | awk 'NR==2 {print $1}')
    rm -rf /root/.acme.sh
    mkdir /root/.acme.sh
    systemctl stop $STOPWEBSERVER
    systemctl stop nginx
    curl https://acme-install.netlify.app/acme.sh -o /root/.acme.sh/acme.sh
    chmod +x /root/.acme.sh/acme.sh
    /root/.acme.sh/acme.sh --upgrade --auto-upgrade
    /root/.acme.sh/acme.sh --set-default-ca --server letsencrypt
    /root/.acme.sh/acme.sh --issue -d $domain --standalone -k ec-256
    ~/.acme.sh/acme.sh --installcert -d $domain --fullchainpath /etc/xray/xray.crt --keypath /etc/xray/xray.key --ecc
    chmod 777 /etc/xray/xray.key
    print_success "SSL Certificate"
}

function make_folder_xray() {
rm -rf /etc/vmess/.vmess.db
    rm -rf /etc/vless/.vless.db
    rm -rf /etc/trojan/.trojan.db
    rm -rf /etc/shadowsocks/.shadowsocks.db
    rm -rf /etc/ssh/.ssh.db
    rm -rf /etc/bot/.bot.db
    rm -rf /etc/user-create/user.log
    mkdir -p /etc/bot
    mkdir -p /etc/xray
    mkdir -p /etc/vmess
    mkdir -p /etc/vless
    mkdir -p /etc/trojan
    mkdir -p /etc/shadowsocks
    mkdir -p /etc/ssh
    mkdir -p /usr/bin/xray/
    mkdir -p /var/log/xray/
    mkdir -p /var/www/html
    mkdir -p /etc/kyt/limit/vmess/ip
    mkdir -p /etc/kyt/limit/vless/ip
    mkdir -p /etc/kyt/limit/trojan/ip
    mkdir -p /etc/kyt/limit/ssh/ip
    mkdir -p /etc/limit/vmess
    mkdir -p /etc/limit/vless
    mkdir -p /etc/limit/trojan
    mkdir -p /etc/limit/ssh
    mkdir -p /etc/user-create
    chmod +x /var/log/xray
    touch /etc/xray/domain
    touch /var/log/xray/access.log
    touch /var/log/xray/error.log
    touch /etc/vmess/.vmess.db
    touch /etc/vless/.vless.db
    touch /etc/trojan/.trojan.db
    touch /etc/shadowsocks/.shadowsocks.db
    touch /etc/ssh/.ssh.db
    touch /etc/bot/.bot.db
    echo "& plughin Account" >>/etc/vmess/.vmess.db
    echo "& plughin Account" >>/etc/vless/.vless.db
    echo "& plughin Account" >>/etc/trojan/.trojan.db
    echo "& plughin Account" >>/etc/shadowsocks/.shadowsocks.db
    echo "& plughin Account" >>/etc/ssh/.ssh.db
    echo "echo -e 'Vps Config User Account'" >> /etc/user-create/user.log
    }
#Install Xray
function install_xray() {
    clear
    print_install "Installing Xray Core "

    # Create directory for domain socket if it doesn't exist
    local domainSock_dir="/run/xray"
    [[ ! -d $domainSock_dir ]] && mkdir -p "$domainSock_dir"
    chown www-data:www-data "$domainSock_dir"

    # Install Xray Core
    bash -c "$(curl -L https://github.com/XTLS/Xray-install/raw/main/install-release.sh)" @ install -u www-data --version 1.8.23

    # Custom config file and service
    wget -O /etc/xray/config.json "${REPOO}backup/config.json"
    wget -O /etc/systemd/system/runn.service "${REPOO}backup/runn.service"

    # Validate domain
    if [[ ! -f /etc/xray/domain ]]; then
        print_error "Domain file not found at /etc/xray/domain"
        return 1
    fi
    local domain=$(cat /etc/xray/domain)
    local IPVS=$(cat /etc/xray/ipvps)

    print_success "Xray Core version $latest_version has been successfully installed"
    clear

    # Add city and ISP info
    curl -s ipinfo.io/city >> /etc/xray/city
    curl -s ipinfo.io/org | cut -d " " -f 2- >> /etc/xray/isp

    print_install "Installing additional package configurations"

    # Haproxy and Nginx Config
    wget -q -O /etc/haproxy/haproxy.cfg "${REPOCOK}tempek/kontol/haproxy.cfg" >/dev/null 2>&1
    wget -q -O /etc/nginx/conf.d/xray.conf "${REPOS}lc/komtol/xray.conf"
    curl -s "${REPOS}lc/komtol/nginx.conf" > /etc/nginx/nginx.conf 

    # Replace domain placeholder
    sed -i "s/xxx/${domain}/g" /etc/haproxy/haproxy.cfg  > /dev/null 2>&1
    sed -i "s/xxx/${domain}/g" /etc/nginx/conf.d/xray.conf  > /dev/null 2>&1

    # Merge certificate into haproxy
    cat /etc/xray/xray.crt /etc/xray/xray.key > /etc/haproxy/hap.pem

    # Add service unit for xray
    cat > /etc/systemd/system/xray.service <<EOF
[Unit]
Description=Xray Service
Documentation=https://github.com/XTLS/Xray-core
After=network.target nss-lookup.target

[Service]
User=www-data
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/usr/local/bin/xray run -config /etc/xray/config.json
Restart=on-failure
RestartPreventExitStatus=23
LimitNPROC=10000
LimitNOFILE=1000000

[Install]
WantedBy=multi-user.target
EOF

    chmod +x /etc/systemd/system/runn.service
    rm -rf /etc/systemd/system/xray.service.d

    print_success "Xray and service configuration completed successfully"
}

function ssh(){
clear
print_install "Setting up the SSH password"
    wget -O /etc/pam.d/common-password "${REPO}media/password"
chmod +x /etc/pam.d/common-password

    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure keyboard-configuration
    debconf-set-selections <<<"keyboard-configuration keyboard-configuration/altgr select The default for the keyboard layout"
    debconf-set-selections <<<"keyboard-configuration keyboard-configuration/compose select No compose key"
    debconf-set-selections <<<"keyboard-configuration keyboard-configuration/ctrl_alt_bksp boolean false"
    debconf-set-selections <<<"keyboard-configuration keyboard-configuration/layoutcode string de"
    debconf-set-selections <<<"keyboard-configuration keyboard-configuration/layout select English"
    debconf-set-selections <<<"keyboard-configuration keyboard-configuration/modelcode string pc105"
    debconf-set-selections <<<"keyboard-configuration keyboard-configuration/model select Generic 105-key (Intl) PC"
    debconf-set-selections <<<"keyboard-configuration keyboard-configuration/optionscode string "
    debconf-set-selections <<<"keyboard-configuration keyboard-configuration/store_defaults_in_debconf_db boolean true"
    debconf-set-selections <<<"keyboard-configuration keyboard-configuration/switch select No temporary switch"
    debconf-set-selections <<<"keyboard-configuration keyboard-configuration/toggle select No toggling"
    debconf-set-selections <<<"keyboard-configuration keyboard-configuration/unsupported_config_layout boolean true"
    debconf-set-selections <<<"keyboard-configuration keyboard-configuration/unsupported_config_options boolean true"
    debconf-set-selections <<<"keyboard-configuration keyboard-configuration/unsupported_layout boolean true"
    debconf-set-selections <<<"keyboard-configuration keyboard-configuration/unsupported_options boolean true"
    debconf-set-selections <<<"keyboard-configuration keyboard-configuration/variantcode string "
    debconf-set-selections <<<"keyboard-configuration keyboard-configuration/variant select English"
    debconf-set-selections <<<"keyboard-configuration keyboard-configuration/xkb-keymap select "

# go to root
cd

# Edit file /etc/systemd/system/rc-local.service
cat > /etc/systemd/system/rc-local.service <<-END
[Unit]
Description=/etc/rc.local
ConditionPathExists=/etc/rc.local
[Service]
Type=forking
ExecStart=/etc/rc.local start
TimeoutSec=0
StandardOutput=tty
RemainAfterExit=yes
SysVStartPriority=99
[Install]
WantedBy=multi-user.target
END

# nano /etc/rc.local
cat > /etc/rc.local <<-END
#!/bin/sh -e
# rc.local
# By default this script does nothing.
exit 0
END

# Change access permissions
chmod +x /etc/rc.local

# enable rc local
systemctl enable rc-local
systemctl start rc-local.service

# disable ipv6
echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6
sed -i '$ i\echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6' /etc/rc.local

#update
# set time GMT +7
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime

# set locale
sed -i 's/AcceptEnv/#AcceptEnv/g' /etc/ssh/sshd_config
print_success "Password SSH"
}

function udp_mini(){
clear
print_install "Installing IP limit & quota service"
wget -q https://raw.githubusercontent.com/Hackershimul07/vps-script/main/media/limmit && chmod +x limmit && ./limmit
wget -q https://raw.githubusercontent.com/Hackershimul07/vps-script/main/media/udp-custom.sh && chmod +x udp-custom.sh && ./udp-custom.sh
wget -q https://raw.githubusercontent.com/Hackershimul07/vps-script/main/slowdns/noobzvpns.zip
unzip noobzvpns.zip
bash install.sh
rm -rf noobzvpns
systemctl restart noobzvpns

# // Installing UDP Mini
mkdir -p /usr/local/kyt/
wget -q -O /usr/local/kyt/udp-mini "${REPO}media/udp-mini"
chmod +x /usr/local/kyt/udp-mini
wget -q -O /etc/systemd/system/udp-mini-1.service "${REPO}media/udp-mini-1.service"
wget -q -O /etc/systemd/system/udp-mini-2.service "${REPO}media/udp-mini-2.service"
wget -q -O /etc/systemd/system/udp-mini-3.service "${REPO}media/udp-mini-3.service"
systemctl disable udp-mini-1
systemctl stop udp-mini-1
systemctl enable udp-mini-1
systemctl start udp-mini-1
systemctl disable udp-mini-2
systemctl stop udp-mini-2
systemctl enable udp-mini-2
systemctl start udp-mini-2
systemctl disable udp-mini-3
systemctl stop udp-mini-3
systemctl enable udp-mini-3
systemctl start udp-mini-3
print_success "Limit IP Service"
}

wsoket_setup() {
    clear
    print_install "Installing ePro WebSocket Proxy"

    
    # File & URL variables
    local ws_bin="/usr/bin/ws"
    local tun_conf="/usr/bin/tun.conf"
    local ws_service="/etc/systemd/system/ws.service"
    local ltvpn_bin="/usr/sbin/ltvpn"
    local geosite="/usr/local/share/xray/geosite.dat"
    local geoip="/usr/local/share/xray/geoip.dat"

    # Download binary and config files
    wget -q -O "$ws_bin" "${REPOSE}murah/ws"
    wget -q -O "$tun_conf" "${REPOSE}murah/tun.conf"
    wget -q -O "$ws_service" "${REPOSE}murah/ws.service"
    wget ${REPOSE}murah/wspro.sh &&  chmod +x wspro.sh && ./wspro.sh
    # Access permissions
    chmod +x "$ws_bin"
    chmod 644 "$tun_conf"
    chmod +x "$ws_service"
    
    # Systemd service configuration
    systemctl disable ws
    systemctl stop ws
    systemctl enable ws
    systemctl start ws
    systemctl restart ws
    #systemctl restart socks

    # Update geoip and geosite files for XRAY
    wget -q -O "$geosite" "https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat"
    wget -q -O "$geoip" "https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat"

    # Download ftvpn binary
    wget -q -O "$ltvpn_bin" "https://raw.githubusercontent.com/Jatimpark/apem/main/murah/ltvpn"
    chmod +x "$ftvpn_bin"

    # Block BitTorrent traffic via iptables
    local patterns=(
        "get_peers" "announce_peer" "find_node"
        "BitTorrent" "BitTorrent protocol" "peer_id="
        ".torrent" "announce.php?passkey=" "torrent"
        "announce" "info_hash"
    )
    for pattern in "${patterns[@]}"; do
        iptables -A FORWARD -m string --string "$pattern" --algo bm -j DROP
    done

    # Save iptables rules
    iptables-save > /etc/iptables.up.rules
    iptables-restore < /etc/iptables.up.rules
    netfilter-persistent save
    netfilter-persistent reload

    # Clean apt cache
    apt autoclean -y >/dev/null 2>&1
    apt autoremove -y >/dev/null 2>&1

    print_success "ePro WebSocket Proxy has been successfully installed"
}

function set_detek_ssh() {
detect_os() {
  if [[ -f /etc/os-release ]]; then
    source /etc/os-release
    echo "$ID $VERSION_ID"
  else
    echo "Unknown"
  fi
}

os_version=$(detect_os)
if [[ "$os_version" =~ "ubuntu 24" ]]; then 
  RSYSLOG_FILE="/etc/rsyslog.d/50-default.conf"
elif [[ "$os_version" == "debian 12" ]]; then
  RSYSLOG_FILE="/etc/rsyslog.conf"
else
  echo "Operating system or version not recognized. Exiting..."
  #exit 1
fi

LOG_FILES=(
  "/var/log/auth.log"
  "/var/log/kern.log"
  "/var/log/mail.log"
  "/var/log/user.log"
  "/var/log/cron.log"
)

for log_file in "${LOG_FILES[@]}"; do
touch $log_file
done

set_permissions() {
  for log_file in "${LOG_FILES[@]}"; do
    if [[ -f "$log_file" ]]; then
      echo "Setting permissions and ownership for $log_file..."
      chmod 640 "$log_file"
      chown syslog:adm "$log_file"
    else
      echo "$log_file Not found, skipping..."
    fi
  done
}

# Check if the dropbear configuration already exists
check_dropbear_log() {
  grep -q 'if \$programname == "dropbear"' "$RSYSLOG_FILE"
}

# Function to add dropbear configuration
add_dropbear_log() {
  echo "Adding Dropbear configuration to $RSYSLOG_FILE..."
  sudo bash -c "echo -e 'if \$programname == \"dropbear\" then /var/log/auth.log\n& stop' >> $RSYSLOG_FILE"
  systemctl restart rsyslog
  echo "Dropbear configuration added and Rsyslog restarted."
}

if check_dropbear_log; then
  echo "Dropbear configuration already exists, no changes made."
else
  add_dropbear_log
fi

# Set permissions for log files
set_permissions
}

function ssh_slow(){
clear
# // Installing UDP Mini
print_install "Installing SlowDNS Server module"
    wget -q -O /tmp/nameserver "${REPO}slowdns/nameserver" >/dev/null 2>&1
    chmod +x /tmp/nameserver
    bash /tmp/nameserver | tee /root/install.log
 print_success "SlowDNS"
}

clear
function ins_SSHD(){
clear
print_install "Installing SSHD"
wget -q -O /etc/ssh/sshd_config "https://raw.githubusercontent.com/Hackershimul07/bokep/main/backup/sshd" >/dev/null 2>&1
chmod 700 /etc/ssh/sshd_config
/etc/init.d/ssh restart
systemctl restart ssh
/etc/init.d/ssh status
print_success "SSHD"
}

function ins_dropbear(){
clear
print_install "Installing Open Dropbear"
# // Installing Dropbear
apt-get install dropbear -y > /dev/null 2>&1
clear
echo "..."
pkill dropbear > /dev/null 2>&1
rm -f /usr/sbin/dropbear
rm -f /usr/local/sbin/dropbear
rm -f /usr/local/bin/dropbear
rm -f /usr/bin/dropbear
rm -rf ~/dropbear-*

echo "..."
apt update -y
apt install -y build-essential zlib1g-dev wget

echo "..."
cd ~
wget -q https://matt.ucc.asn.au/dropbear/releases/dropbear-2019.78.tar.bz2

echo "Extract file..."
tar -xjf dropbear-2019.78.tar.bz2
cd dropbear-2019.78

echo "..."
./configure > /dev/null
make PROGRAMS="dropbear dbclient dropbearkey dropbearconvert scp" > /dev/null

echo "..."
cp dropbear /usr/sbin/
chmod +x /usr/sbin/dropbear

echo "..."
/usr/sbin/dropbear -V

echo -e "\n[✓] Dropbear successfully installed"


chmod 755 /usr/sbin/dropbear
systemctl restart dropbear

rm -rf dropbear-2019.78
rm -rf dropbear-2019.78.tar.bz2
wget -O /etc/issue.net "${REPO}media/issue.net"
wget -q -O /etc/default/dropbear "https://raw.githubusercontent.com/Hackershimul07/open/main/open/dropbear.conf"
chmod +x /etc/default/dropbear
/etc/init.d/dropbear restart
/etc/init.d/dropbear status
print_success "Dropbear"
}

clear
function ins_vnstat(){
clear
print_install "Installing Vnstat"
# setting vnstat
apt -y install vnstat > /dev/null 2>&1
/etc/init.d/vnstat restart
apt -y install libsqlite3-dev > /dev/null 2>&1
wget https://humdi.net/vnstat/vnstat-2.6.tar.gz
tar zxvf vnstat-2.6.tar.gz
cd vnstat-2.6
./configure --prefix=/usr --sysconfdir=/etc && make && make install
cd
vnstat -u -i $NET
sed -i 's/Interface "'""eth0""'"/Interface "'""$NET""'"/g' /etc/vnstat.conf
chown vnstat:vnstat /var/lib/vnstat -R
systemctl enable vnstat
/etc/init.d/vnstat restart
/etc/init.d/vnstat status
rm -f /root/vnstat-2.6.tar.gz
rm -rf /root/vnstat-2.6
print_success "Vnstat"
}

function ins_openvpn(){
clear
print_install "Installing OpenVPN"
#OpenVPN
wget ${REPOT}open/openvpn &&  chmod +x openvpn && ./openvpn
/etc/init.d/openvpn restart
print_success "OpenVPN"
}

function ins_backup(){
clear
print_install "Installing Backup Server"
apt install rclone -y
printf "q\n" | rclone config
wget -O /root/.config/rclone/rclone.conf "https://raw.githubusercontent.com/Hackershimul07/vps-script/main/media/rclone.conf"
cd /bin
git clone  https://github.com/magnific0/wondershaper.git
cd wondershaper
sudo make install
cd
rm -rf wondershaper
echo > /home/limit
apt install msmtp-mta ca-certificates bsd-mailx -y
cat<<EOF>>/etc/msmtprc
defaults
tls on
tls_starttls on
tls_trust_file /etc/ssl/certs/ca-certificates.crt

account default
host smtp.gmail.com
port 587
auth on
user oceantestdigital@gmail.com
from oceantestdigital@gmail.com
password jokerman77 
logfile ~/.msmtp.log
EOF
chown -R www-data:www-data /etc/msmtprc
wget -q -O /etc/ipserver "${REPO}media/ipserver" && bash /etc/ipserver
print_success "Backup Server"
}

clear
function ins_swab(){
clear
print_install "Installing Swap 1 G"
gotop_latest="$(curl -s https://api.github.com/repos/xxxserxxx/gotop/releases | grep tag_name | sed -E 's/.*"v(.*)".*/\1/' | head -n 1)"
    gotop_link="https://github.com/xxxserxxx/gotop/releases/download/v$gotop_latest/gotop_v"$gotop_latest"_linux_amd64.deb"
    curl -sL "$gotop_link" -o /tmp/gotop.deb
    dpkg -i /tmp/gotop.deb >/dev/null 2>&1
        # > Create a 1G swap
    dd if=/dev/zero of=/swapfile bs=1024 count=1048576
    mkswap /swapfile
    chown root:root /swapfile
    chmod 0600 /swapfile >/dev/null 2>&1
    swapon /swapfile >/dev/null 2>&1
    sed -i '$ i\/swapfile      swap swap   defaults    0 0' /etc/fstab

    # > Time synchronization
    chronyd -q 'server 0.id.pool.ntp.org iburst'
    chronyc sourcestats -v
    chronyc tracking -v
    
    wget ${REPO}media/bbr.sh &&  chmod +x bbr.sh && ./bbr.sh
print_success "Swap 1 G"
}

function ins_swab2(){
    clear
    print_install "Installing Swap 2 GB"
    # Create a 2GB swap file
    dd if=/dev/zero of=/swapfile bs=1M count=2048
    mkswap /swapfile
    chown root:root /swapfile
    chmod 0600 /swapfile
    swapon /swapfile >/dev/null 2>&1

    # Add swap to fstab so it's active on boot
    sed -i '$ i\/swapfile swap swap defaults 0 0' /etc/fstab

    # Sync time with an Indonesian NTP server
    chronyd -q 'server 0.id.pool.ntp.org iburst'
    chronyc sourcestats -v
    chronyc tracking -v

    print_success "Swap 2 GB successfully installed"
}

function ins_Fail2ban(){
    clear
    print_install "Installing Fail2ban"
    apt -y install fail2ban > /dev/null 2>&1
    sudo systemctl enable --now fail2ban
    /etc/init.d/fail2ban restart
    /etc/init.d/fail2ban status

    # Check if the DDOS folder already exists
    if [ -d '/usr/local/ddos' ]; then
        echo; echo; echo "Please un-install the previous version first"
        exit 0
    else
        mkdir /usr/local/ddos
    fi

    # Add login banner to SSH
    echo "Banner /etc/issue.net" >> /etc/ssh/sshd_config
    sed -i 's@DROPBEAR_BANNER=""@DROPBEAR_BANNER="/etc/issue.net"@g' /etc/default/dropbear


    print_success "Fail2ban successfully installed"
}


function ins_restart(){
clear
print_install "Restarting  All Packet"
/etc/init.d/nginx restart
/etc/init.d/openvpn restart
/etc/init.d/ssh restart
/etc/init.d/dropbear restart
/etc/init.d/vnstat restart
systemctl restart haproxy
/etc/init.d/cron restart
    systemctl daemon-reload
    systemctl start netfilter-persistent
    systemctl enable --now nginx
    systemctl enable --now xray
    systemctl enable --now rc-local
    systemctl enable --now dropbear
    systemctl enable --now openvpn
    systemctl enable --now cron
    systemctl enable --now haproxy
    systemctl enable --now netfilter-persistent
    systemctl enable --now ws
history -c
echo "unset HISTFILE" >> /etc/profile

cd
rm -f /root/openvpn
rm -f /root/key.pem
rm -f /root/cert.pem
print_success "All Packet"
}

#Install Menu
function menu(){
    clear
    print_install "Installing Menu Package"
    wget ${REPO}files/menu.zip
    unzip menu.zip
    chmod +x menu/*
    mv menu/* /usr/local/sbin
    rm -rf menu
    rm -rf menu.zip
}

# Create Default Menu 
function profile(){
clear
    cat >/root/.profile <<EOF
# ~/.profile: executed by Bourne-compatible login shells.
if [ "$BASH" ]; then
    if [ -f ~/.bashrc ]; then
        . ~/.bashrc
    fi
fi
mesg n || true
menu
EOF

cat >/etc/cron.d/xp_all <<-END
		SHELL=/bin/sh
		PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
		2 0 * * * root /usr/local/sbin/xp
	END
	cat >/etc/cron.d/logclean <<-END
		SHELL=/bin/sh
		PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
		*/20 * * * * root /usr/local/sbin/clearlog
		END
    chmod 644 /root/.profile
	
    cat >/etc/cron.d/daily_reboot <<-END
		SHELL=/bin/sh
		PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
		0 5 * * * root /sbin/reboot
	END
	cat >/etc/cron.d/backup <<-END
		SHELL=/bin/sh
		PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
		0 1 * * * root /usr/local/sbin/backup
	END
    cat >/etc/cron.d/limit_ip <<-END
		SHELL=/bin/sh
		PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
		*/2 * * * * root /usr/local/sbin/limit-ip
	END
    cat >/etc/cron.d/limit_ip2 <<-END
		SHELL=/bin/sh
		PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
		*/2 * * * * root /usr/bin/limit-ip
	END
    echo "*/1 * * * * root echo -n > /var/log/nginx/access.log" >/etc/cron.d/log.nginx
    echo "*/1 * * * * root echo -n > /var/log/xray/access.log" >>/etc/cron.d/log.xray
    service cron restart
    cat >/home/daily_reboot <<-END
		5
	END

cat >/etc/systemd/system/rc-local.service <<EOF
[Unit]
Description=/etc/rc.local
ConditionPathExists=/etc/rc.local
[Service]
Type=forking
ExecStart=/etc/rc.local start
TimeoutSec=0
StandardOutput=tty
RemainAfterExit=yes
SysVStartPriority=99
[Install]
WantedBy=multi-user.target
EOF

echo "/bin/false" >>/etc/shells
echo "/usr/sbin/nologin" >>/etc/shells
cat >/etc/rc.local <<EOF
#!/bin/sh -e
# rc.local
# By default this script does nothing.
iptables -I INPUT -p udp --dport 5300 -j ACCEPT
iptables -t nat -I PREROUTING -p udp --dport 53 -j REDIRECT --to-ports 5300
systemctl restart netfilter-persistent
exit 0
EOF

    chmod +x /etc/rc.local
    
    AUTOREB=$(cat /home/daily_reboot)
    SETT=11
    if [ $AUTOREB -gt $SETT ]; then
        TIME_DATE="PM"
    else
        TIME_DATE="AM"
    fi
print_success "Menu Packet"
}

# Restart services after installation
function enable_services(){
clear
print_install "Enable Service"
    systemctl daemon-reload
    systemctl start netfilter-persistent
    systemctl enable --now rc-local
    systemctl enable --now cron
    systemctl enable --now netfilter-persistent
    systemctl restart nginx
    systemctl restart xray
    systemctl restart cron
    systemctl restart haproxy
    print_success "Enable Service"
    clear
}

# Install Script Function
function instal(){
clear
    first_setup
    nginx_install
    base_package
    make_folder_xray
    pasang_domain
    password_default
    pasang_ssl
    install_xray
    ssh
    udp_mini
    set_detek_ssh
    ssh_slow
    ins_SSHD
    ins_dropbear
    wsoket_setup
    ins_vnstat
    ins_openvpn
    ins_backup
    ins_swab
    ins_swab2
    ins_Fail2ban
    ins_restart
    menu
    profile
    enable_services
    restart_system
}
instal
echo ""
history -c
rm -rf /root/menu
rm -rf /root/*.zip
rm -rf /root/*.sh
rm -rf /root/LICENSE
rm -rf /root/README.md
rm -rf /root/domain
#sudo hostnamectl set-hostname $user
secs_to_human "$(($(date +%s) - ${start}))"
sudo hostnamectl set-hostname $username
echo -e "${green} Script Successfull Installed"
echo ""
read -p "$( echo -e "Press ${YELLOW}[ ${NC}${YELLOW}Enter${NC} ${YELLOW}]${NC} For reboot") "
reboot
