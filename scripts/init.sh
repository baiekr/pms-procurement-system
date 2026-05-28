#!/bin/bash

# PMS 项目初始化脚本

set -e

echo "🚀 PMS 采购管理系统 - 项目初始化"
echo "=================================="

# 1. 检查 PHP 版本
echo "✓ 检查 PHP 版本..."
php -v

# 2. 检查 Composer
echo "✓ 检查 Composer..."
composer --version

# 3. 创建 .env 文件
echo "✓ 创建 .env 文件..."
if [ ! -f .env ]; then
    cp .env.example .env
    echo "  .env 文件已创建，请修改数据库配置"
fi

# 4. 安装依赖
echo "✓ 安装 Composer 依赖..."
composer install --no-interaction

# 5. 生成应用密钥
echo "✓ 生成应用密钥..."
php artisan key:generate --force

# 6. 生成 JWT 密钥
echo "✓ 生成 JWT 密钥..."
php artisan jwt:secret --force

# 7. 创建数据库符号链接
echo "✓ 创建存储符号链接..."
php artisan storage:link || true

# 8. 清除缓存
echo "✓ 清除缓存..."
php artisan cache:clear
php artisan config:clear
php artisan view:clear

# 9. 运行数据库迁移
echo "✓ 运行数据库迁移..."
php artisan migrate --force

# 10. 填充数据库
echo "✓ 填充初始数据..."
php artisan db:seed --force

# 11. 发布前端资源
echo "✓ 发布前端资源..."
php artisan vendor:publish --force

echo ""
echo "✅ PMS 采购管理系统初始化完成！"
echo ""
echo "🎯 下一步："
echo "  1. 修改 .env 文件中的数据库配置"
echo "  2. 运行: php artisan serve"
echo "  3. 访问: http://localhost:8000"
echo ""
echo "📝 默认账号："
echo "  邮箱: admin@pms.local"
echo "  密码: password123"
echo ""
