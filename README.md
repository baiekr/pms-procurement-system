# PMS 采购管理系统 (Procurement Management System)

> 基于 Laravel 10 + Vue 3 的企业级招标采购管理平台

## 📋 项目概述

为**润丰建设**开发的统一招标采购管理系统，涵盖供应商管理、询比价、竞价、招标等全流程业务。

### 核心功能
- 👥 **供应商管理**：注册、资质审核、库管理
- 💰 **询比价管理**：询价单、报价、比价分析
- 🏆 **竞价管理**：反向竞价、实时排行、定标
- 📄 **招标管理**：立项、开标、在线评标、定标
- 📢 **消息系统**：公告、通知、在线沟通
- 🔐 **权限系统**：RBAC、组织架构、人员管理

## 🛠 技术栈

| 层级 | 技术 |
|------|------|
| **后端** | Laravel 10, PHP 8.1+ |
| **数据库** | MySQL 8.0, Redis |
| **消息队列** | RabbitMQ / Redis Stream |
| **前端(PC)** | Vue 3 + Element Plus |
| **前端(移动)** | Vue 3 + Vant |
| **部署** | Docker + Nginx + PHP-FPM |

## 📁 项目结构

```
pms-procurement-system/
├── app/
│   ├── Http/
│   │   ├── Controllers/
│   │   ├── Middleware/
│   │   └── Requests/
│   ├── Models/
│   ├── Services/
│   ├── Jobs/
│   └── Events/
├── modules/
│   ├── Supplier/          # 供应商模块
│   ├── Inquiry/           # 询比价模块
│   ├── Bidding/           # 竞价模块
│   ├── Tender/            # 招标模块
│   ├── Message/           # 消息模块
│   └── Base/              # 基础服务模块
├── database/
│   ├── migrations/
│   ├── seeders/
│   └── sql/               # 完整 SQL 脚本
├── routes/
│   ├── api.php
│   └── web.php
├── docs/
│   ├── api/               # API 文档
│   └── database/          # 数据库设计
├── docker/
│   ├── Dockerfile
│   └── docker-compose.yml
└── README.md
```

## 🚀 快速开始

### 前置要求
- PHP 8.1+
- MySQL 8.0+
- Redis
- Docker & Docker Compose (可选)

### 本地开发部署

```bash
# 1. 克隆项目
git clone https://github.com/baiekr/pms-procurement-system.git
cd pms-procurement-system

# 2. 使用 Docker Compose (推荐)
docker-compose up -d

# 3. 或手动部署
composer install
php artisan key:generate
php artisan migrate
php artisan db:seed
php artisan serve
```

### 默认账号
- **采购商管理员**：admin@pms.local / password123
- **供应商**：supplier@pms.local / password123

## 📚 核心模块

### 1. 供应商管理 (Supplier Module)
- 供应商注册与资质审核
- 资料变更管理
- 供应商库检索与维护

### 2. 询比价管理 (Inquiry Module)
- 询价单创建与下发
- 供应商报价
- 自动比价与排序

### 3. 竞价管理 (Bidding Module)
- 反向竞价发布
- 实时竞价大厅（支持 WebSocket）
- 定标与缴费管理

### 4. 招标管理 (Tender Module)
- 招标立项与标底编制
- 在线开标与评标
- 专家打分与定标

### 5. 消息系统 (Message Module)
- 公告发布
- 邮件/站内信通知
- 在线评标界面

### 6. 基础服务 (Base Module)
- 组织架构管理
- RBAC 权限系统
- 基础数据维护

## 📖 API 文档

详见 `docs/api/` 目录，包含：
- 认证接口
- 供应商接口
- 采购管理接口
- 竞价接口
- 招标接口

## 🔒 安全特性

- ✅ HTTPS 加密
- ✅ JWT 认证
- ✅ SQL 注入防护
- ✅ XSS 过滤
- ✅ CSRF 保护
- ✅ 操作日志审计
- ✅ 敏感字段加密

## 📊 性能指标

- 并发支持：≥200 人同时操作
- 页面加载：≤3 秒
- 可用性：7×24 小时
- 竞价大厅：高可用部署

## 🔄 开发工作流

```bash
# 1. 创建功能分支
git checkout -b feature/supplier-registration

# 2. 开发并提交代码
git add .
git commit -m "feat: 供应商注册功能"

# 3. 推送并创建 PR
git push origin feature/supplier-registration
```

## 📝 贡献指南

1. Fork 本仓库
2. 创建特性分支 (`git checkout -b feature/AmazingFeature`)
3. 提交更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 开启 Pull Request

## 📄 许可证

MIT License - 详见 [LICENSE](LICENSE) 文件

## 👥 联系方式

- 项目经理：[项目信息]
- 技术支持：[support info]
- 文档：[docs link]

---

**最后更新**：2026年5月28日
**版本**：v1.0.0-beta
