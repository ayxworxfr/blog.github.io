# 定义 Hexo 根目录
HEXO_ROOT = ./node_modules/hexo

# 定义 Hexo 可执行文件
HEXO_CLI = hexo

# 默认任务
all:
	@echo "Hexo Makefile"
	@echo "make new [layout] <title> - 创建一个新的文章"
	@echo "make page <layout> <title> - 创建一个新的页面"
	@echo "make build - 生成静态文件"
	@echo "make run - 启动服务器"
	@echo "make deploy - 部署到 GitHub Pages"

# 创建新文章
new:
	@$(HEXO_CLI) new "$(title)"
    
# 创建新页面
# hexo new page xxx
page:
	@$(HEXO_CLI) new page "$(title)"

# 生成静态文件
build:
	@$(HEXO_CLI) generate

# 启动本地服务器预览博客
run:
	@$(HEXO_CLI) server

# 清理
clean:
	@$(HEXO_CLI) clean

# 部署到 GitHub Pages
deploy:
	@$(HEXO_CLI) deploy

# 检查是否有未提交的更改
check:
	@if [ -n "$(git status --porcelain)" ]; then \
		echo "有未提交的更改，请先提交。"; \
		exit 1; \
	fi
