# Wrtn Technologies 全景调研

> 立项 2026-06-25。韩国 AI 公司 뤼튼테크놀로지스（wrtn.io）深度调研，产出单页 scrollspy 报告站。

## 为什么做
用户看到一篇关于 Wrtn 进军美国/2028 IPO 的报道，要求"全面研究他们的项目"，并明确要"用什么模型以及发展情况也要"。

## 怎么做（4 路并行调研）
1. **deep-research 工作流**（5 路搜索 + 抓取 19 源 + 25 主张 3 票对抗验证）→ 产品/融资/美国计划，毙掉一批 PR 营收数字
2. **模型技术栈专队** → 最关键发现：不自研大模型，主应用 OpenAI/Azure(GPT-5+路由)，Crack 角色聊天用 **Claude 骨干**(Haiku→Sonnet→Opus 4.x) + Gemini，AI 教育线接 LG EXAONE + 韩国芯片 FuriosaAI
3. **发展历程专队** → 2021 创立→两段式 pivot→2028 IPO 完整时间线，韩文一手源
4. **实地浏览 crack.wrtn.ai** → 14 题材分类 + 旗舰 A-RPG「逆向异世界成为星座」自我指涉元叙事

## 关键结论
- Wrtn = 应用层/模型聚合公司，**不自研基础 LLM**
- 走 写作工具(2021)→免费多LLM门户(2023)→AI娱乐(2024起) 两段式转型
- 2025 营收 ~471亿₩(+1433%)，Series B 1080亿₩(Goodwater 领投)，累计 ~1300亿₩
- **数据可信度**：融资额/模型栈站得住；营收预测($1亿ARR)是 PR 口径被毙；图像引擎+角色语音 TTS 是真空白
- **破除传言**：无 YC/软银/Daekyo 投资

## 部署
- 单页 `web/index.html`（自包含 inline CSS/JS，scrollspy）+ 5 张实地截图 `web/img/`
- nginx:alpine + bcrypt basic auth（用户 kang），Dockerfile + nginx.conf（抄 figma-lib 模板）
- 域名 wrtn-research.kang-kang.com（部署中）
- Gitea 公开仓 + GitHub 私有镜像

## 待办 / 可深挖
- 抓 crack.wrtn.ai 实时 API 流量 → 确认图像 CDN 引擎 + 角色语音 TTS 端点（两个信息空白）
- Kyarapu(日)/OOC(美) 的模型构成官方未单独点名，目前推测同 Crack
