""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用设置 HeYabin 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible				" nocp,不要使用vi的键盘模式，而是vim自己的,要放在前面
set helplang=cn					" hlg,设置中文帮助菜单，多个语言按照先后顺序，使用,分隔开
set encoding=utf-8				" enc,设置内部编码格式
set shortmess=atI				" shm,短格式信息显示，命令行长命令自适应，启动的时候不显示那个援助乌干达儿童的提示  
"WINPOS 5 5						" winp,显示窗口位置，目前所有版本都不支持  
"colorscheme molokai			" colo,设置配色主题
"set background=dark			" bg,背景使用深色,默认light
set noerrorbells				" noeb,去掉输入错误的提示声音
set novisualbell				" novb,不要屏幕闪烁来替代提示音  
set guifont=Courier_New:h10:cANSI		" gfn,设置gvim的字体 
set guioptions=					" go,不要图形按钮,针对gvim配置有效  
set guioptions-=T				" go,隐藏工具栏,针对gvim配置有效
set guioptions-=m				" go,隐藏菜单栏,针对gvim配置有效
set cursorline					" cul,突出显示当前行
autocmd InsertLeave * se nocursorline	" nocul,离开insert模式时自动取消高亮当前行  
autocmd InsertEnter * se cursorline		" cul,进入insert模式时自动高亮当前行  
set splitright					" 将新打开的垂直分屏放置于当前窗口的右侧
set splitbelow					" 将新打开的水平分屏放置于当前窗口的下方
set history=500					" 记录的历史输入命令记录个数,建议不要过多，可以使用UP、DOWN键查看/调用
set nobackup					" nobk,不备份，若使用备份bk,则写入文件之前先备份，成功写入后再删除备份的文件 
set noswapfile					" nos,禁止生成临时文件
set autowrite					" aw,部分命令切换buff时自动保存当前文件
set confirm						" conf,在处理未保存或只读文件的时候，弹出确认
set autoread					" ar,当文件被改动时自动载入
set ruler						" ru,打开状态栏标尺,显示对应行列号及所在位置再全文的方位，
set magic						" 设置魔术,\m \M.详见手册
set number						" nu,显示行号
set laststatus=2				" ls,从不显示状态行(0),启动显示状态行(1),总是显示状态行(2)  
set cmdheight=2					" ch,命令行（在状态行下）的高度，默认为1，这里是2
set showcmd						" sc,输入的命令显示出来，看的清楚些,当终端运行比较慢的机器上建议关闭
set foldenable					" fen,允许折叠显示，关闭改选项则打开文件全部展开显示
set foldmethod=manual			" fdm,手动折叠(indent缩进折叠，syntax语法折叠，marker标记折叠，manual手动折叠,expr表达式折叠，diff没有更改的文本折叠) 
set foldcolumn=0				" fdc,值设定范围0-12，非0时在左侧显示折叠-和展开折叠+的标识
set foldlevel=3					" fdl,折叠包含嵌套级别数,默认0此时会关闭所有折叠，高等级的折叠会关闭低等级的折叠
set smarttab					" sta,在行和段开始处使用制表符,宽度取决于shiftwidth、tabstop、softtabstop的设定值
set shiftwidth=4				" sw,设置Tab键的宽度
set tabstop=4					" ts,读档时\t解释为多少个空格
set softtabstop=4				" sts,编辑时Backspace或Tab对应多少个空格,默认0
set noexpandtab					" noet,不要用空格代替制表符,相反set expandtab则为使用空格代替制表符
set fillchars=vert:\ ,stl:\ ,stlnc:\ 	" fcs,在被垂直分割的窗口和当前/非当前窗口状态行间显示空白便于阅读,这里未设置fold和diff(vert默认为|分隔而非这里设置的空格).
syntax on						" syn,语法高亮  
set backspace=2					" bs,使回格键（backspace）正常处理indent, eol, start.(设置为1时处理indent，eol)
set whichwrap=b,s,<,>,[,]		" ww,开启normal或visual模式下的backspace键、空格键、左右方向键以及在insert或replace模式下的左右方向键的跳行功能(默认值为b,s)，h和l键左右移动自动跳行功能是不被建议的，这里没有设置
set smartindent					" si,换行时智能选择缩进对齐方式，cindent也有类似的功能
set autoindent					" ai,换行自动缩进
set cindent						" cin,C语言缩进
set hlsearch					" hls,搜索结果高亮显示
set incsearch					" is,搜索逐字符高亮
set ignorecase					" ic,搜索忽略大小写
set gdefault					" gd,行内替换
set langmenu=zh_CN.UTF-8		" lm,菜单语言设置
set scrolloff=3					" so,光标移动到buffer的顶部和底部时保持3行距离,默认为0
set showmatch					" sm,高亮显示匹配的括号
set matchtime=1					" mat,匹配括号高亮的时间（单位是十分之一秒）
set wildmenu					" wmnu,增强模式中的命令行自动完成操作,提供自动补全匹配的命令候选选项显示
set linespace=0					" lsp,字符间插入的像素行数目,默认0，win32默认为1
filetype on						" ft,侦测文件类型
filetype plugin on				" ft,载入文件类型插件
filetype indent on				" ft,为特定文件类型载入相关缩进文件
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   " stl,状态行显示的内容,格式内容详见手册
set termencoding=utf-8			" tenc,输出到终端进行转码为utf-8
set fileencoding=utf-8			" fenc,写入到文件编码格式
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,utf-16,big5,euc-jp,latin1	" fencs,打开文件自动探测编码列表，按先后顺序
set completeopt=longest,menu	" cot,需打开文件类型检测, 加了这句才可以用智能补全,让Vim的补全菜单行为与一般IDE一致（弹出式菜单，支持长内容显示）
if has('clipboard')
	if has('unnamedplus') 
		set clipboard=unnamed,unnamedplus	" cb,使用截切板寄存器+  
	else
		set clipboard=unnamed	" cb,使用截切板寄存器*，Windows中使用系统剪贴板  
	endif
endif
set iskeyword+=_,$,@,%,#,-		" isk,带有如下符号的单词不要被换行分割,vim在非windows系统下默认@,48-57,_,192-255(C编程可以使用"a-z,A-Z,48-57,_,.,-,>")
set mouse=a						" 所有模式开启鼠标支持
set selection=exclusive			" sel,三种模式old、inclusive(通过并包含光标所在字符)、exclusive(通过但不包含光标所在字符),只在Visual和Select模式时被使用
set selectmode=mouse,key		" slm,定义了开始选择模式的行为(使用光标和使用特殊按键时进入Select模式)
set report=0					" 通过使用: commands命令，告诉我们文件的哪一行被改变过,默认值为2，0表示一直显示
set tags+=~/.vim/systags		" 添加当前目录ctags文件，如果不存在则向上级目录寻找
set tags+=tags;					" 添加当前目录tags文件，如果不存在则向上级目录寻找
let gitroot = substitute(system('git rev-parse --show-toplevel'), '[\n\r]', '', 'g') 
if gitroot != ''
	let &tags = &tags . ',' . gitroot . '/.git/tags'	" 添加git项目根目录下.git/tags文件，用于vim内置自动补偿功能
endif
set viminfo+=!					" vi,保存全局变量,以大写字母开头的全局变数，并且不含有小写字母
"""""新文件标题""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新建.c,.h,.sh,.rb,.py文件，自动插入文件头 
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.rb,*.py exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func SetTitle() 
	if &filetype == 'sh' ||  &filetype == 'python' || &filetype == 'ruby' 
		call setline(1,"\#!/usr/bin/env ".&filetype) 
		call append(line("."),"# encoding: utf-8")
		call append(line(".")+1, "") 
		call append(line(".")+2, "########################################################################")   
		call append(line(".")+3, "\#\tCopyright © ".strftime("%Y")." HeYabin, All rights reserved. ") 
		call append(line(".")+4, "\#\tFile Name: ".expand("%"))   
		call append(line(".")+5, "\#\tAuthor: HeYabin \tMail:990194342@qq.com ")
		call append(line(".")+6, "\#\tVersion: V1.0.0 ")   
		call append(line(".")+7, "\#\tDate: ".strftime("%Y-%m-%d %a %H:%M"))   
		call append(line(".")+8, "\#\tDescription: ")
		call append(line(".")+9, "\#\tHistory: ")
		call append(line(".")+10, "########################################################################")   
		call append(line(".")+11, "")
		call append(line(".")+12, "")
	else 
		call setline(1, "/*************************************************************************") 
		call append(line("."), " *\tCopyright © ".strftime("%Y")." HeYabin, All rights reserved. ") 
		call append(line(".")+1, " *\tFile Name: ".expand("%")) 
		call append(line(".")+2, " *\tAuthor: HeYabin \tMail: 990194342@qq.com ")
		call append(line(".")+3, " *\tVersion: V1.0.0 ") 
		call append(line(".")+4, " *\tDate: ".strftime("%Y-%m-%d %a %H:%M"))
		call append(line(".")+5, " *\tDescription: ")
		call append(line(".")+6, " *\tHistory: ")
		call append(line(".")+7, " ************************************************************************/") 
		call append(line(".")+8, "")
		if expand("%:e") == 'cpp'
			call append(line(".")+9, "#include <iostream>")
			call append(line(".")+10, "using namespace std;")
			call append(line(".")+11, "")
		endif
		if &filetype == 'c'
			call append(line(".")+9, "#include <stdio.h>")
			call append(line(".")+10, "")
		endif
		if expand("%:e") == 'h'
			call append(line(".")+9, "#ifndef __".toupper(expand("%:r"))."_H__")
			call append(line(".")+10, "#define __".toupper(expand("%:r"))."_H__")
			call append(line(".")+11, "")
			call append(line(".")+12, "#endif")
		endif
	endif
	"新建文件后，自动定位到文件末尾
	normal G
endfunc 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 加载插件(如果有对应配置文件),有可能会改变之前的设置 HeYabin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand("~/.vimrc.bundles"))
	source ~/.vimrc.bundles				" 使用插件
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 按键映射 HeYabin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 生成ctags快捷键设置
func! UpdateCtags()
	echo 'Generate tags ...'
	call system("getgitroot=`git rev-parse --show-toplevel 2>/dev/null`;if [ -n \"$getgitroot\" ];then ctags -I __THROW -I __attribute_pure__ -I __nonnull -I __attribute__ --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q -R -f $getgitroot/.git/tags $getgitroot/*; else ctags -I __THROW -I __attribute_pure__ -I __nonnull -I __attribute__ --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q -R -f `pwd`/tags `pwd`/*;fi")
	echo 'done !'
endfunc
map <F4> :call UpdateCtags() <CR> 
" 粘贴模式翻转快捷键
set pastetoggle=<F11>
" 全部缩进
map <F12> gg=G  
" 去空行  
nnoremap <F2> :g/^\s*$/d<CR> 
