# research-ai-chatbot

利用聊天機器人服務整合複數雲端人工智慧服務。

## 指令

使用 [devops-cli-framework](https://github.com/eastmoon/devops-cli-framework) 設計專案指令

+ 啟用服務 ```do.bat up```
+ 關閉服務 ```do.bat down```

## 聊天機器人 / 人工智慧代理人

+ [15 Best Open-Source Chatbot Platforms in 2026](https://pagergpt.ai/ai-chatbot/open-source-chatbot-platforms)

### Chatbot UI

The open-source AI chat app for everyone.

+ [Chatbot UI](https://www.chatbotui.com/zh)

放棄使用，由於 Chatbot UI 需要 Supabase 為基礎，但 Supabase 設計針對開發而非產品，且此開源有一段時間未更新，參考諸多設定在兩方軟體間有版本衝突。

### LibreChat

LibreChat brings together all your AI conversations in one unified, customizable interface

+ [LibreChat AI](https://www.librechat.ai/)
		- [AI Setup](https://www.librechat.ai/docs/configuration/pre_configured_ai)

## 人工智慧模型

### ChatGPT

ChatGPT 是由 OpenAI 開發的尖端人工智慧聊天機器人，於 2022 年底推出。它基於大型語言模型（LLM），能以自然的對話方式回答問題、創作內容、編寫程式碼、翻譯及整理資料，具備強大的語境理解與生成能力。

+ [ChatGPT](https://chatgpt.com/)
	- [ChatGPT Pricing](https://chatgpt.com/zh-Hant/pricing/)

As of March 2026, ChatGPT’s usage limits depend on your subscription tier. Different plans have different rolling message caps that affect how long and complex your conversations can be.

Free：$0 / month、10 messages every 5 hours、GPT-5.4 Thinking Access 1 message per day
Plus：$20 / month、160 messages every 3 hours、GPT-5.4 Thinking Access Up to 3,000 messages per week

以下為人工智慧代理人設定步驟：

##### 獲取 OpenAI API 金鑰

1. 前往 [OpenAI Platforms - API Keys](https://platform.openai.com/api-keys)。
2. 選擇 "Create new secret key"。
3. 複製 API Key 並妥善保存（這是免費的，但有每分鐘調用次數限制）。

##### 替換 .env 參數

對 ```.env``` 檔案中的下列參數，更換為 OpenAI API 金鑰。

```
OPENAI_API_KEY=user_provided
```

在本專案請將金鑰以寫在檔案 ```./conf/devops/keys/OPENAI_API_KEY``` 中，在 ```do.bat up``` 時會自動覆蓋 ```.env``` 中的變數。

##### API 調用費用

在 ChatGPT 的用戶計畫 ( 例如 Free plan ) 和 OpenAI API 是兩個完全獨立的系統，因此，Free Plan ≠ API 免費額度，沒有共用額度。

而 ChatGPT 的 Free / Go / Plus / Pro 資費僅適用於 ChatGPT 網站和 App 應用程式，而 API 的使用是完全獨立計費的，採用單次 token 方式收費。

在每百萬 tokens，於 GPT-5 mini 為 $0.25 輸入 / $2 輸出，GPT-5 為 $1.25 輸入 / $10 輸出。

### Gemini

Gemini 是由 Google DeepMind 開發的先進多模態人工智慧模型（前身為 Bard），能同時理解文字、圖片、影片、音訊及程式碼，具備強大邏輯推理能力。它深度整合於 Google 生態系統（如 Gmail、Docs、Android），專為處理複雜任務、生成高品質內容及提升工作效率而設計。

+ [Gemini](https://gemini.google.com/app)
	- [Gemini CLI: Quotas and pricing](https://geminicli.com/docs/resources/quota-and-pricing/)

以下為人工智慧代理人設定步驟：

##### 獲取 Google AI API 金鑰

1. 前往 [Google AI Studio](https://aistudio.google.com/)。
2. 點擊左側的 "Get API key"。
3. 選擇 "Create API key in new project"。
4. 複製 API Key 並妥善保存（這是免費的，但有每分鐘調用次數限制）。

##### 替換 .env 參數

對 ```.env``` 檔案中的下列參數，更換為 Google AI API 金鑰。

```
GOOGLE_KEY=user_provided
```

在本專案請將金鑰以寫在檔案 ```./conf/devops/keys/GOOGLE_KEY``` 中，在 ```do.bat up``` 時會自動覆蓋 ```.env``` 中的變數。

##### API 調用費用

在 Gemini 的用戶計畫 ( 例如 Free plan ) 和 Gemini API 是兩個完全獨立的系統，因此，Free Plan ≠ API 免費額度。

而 Gemini 的訂閱方案僅適用 Gemini 網站、行動裝置應用程式、Google workspace 額外服務，而 API 的使用是完全獨立計費的，分為 Free Tier ( 免費層級 ) 與 Pay-as-you-go ( 付費層級 )。

| 特性 | Free Tier (免費 API) | Pay-as-you-go (付費 API) |
| :-: | :--- | :--- |
| 數據隱私 | 你的輸入與輸出數據可能會被 Google 用於改進模型。 | 隱私保護。數據不會被用於訓練或改進模型。 |
| 速率限制 | RPM 較低（ 約 2~15 次請求/分鐘，視模型而定 ）。| RPM 較高（ 通常從 150 RPM 起跳 ）。|
| 每日限額 | RPD 有限制（例如 Gemini 2.5 Flash 約 250 次/天）。 | 無固定上限（ 按量計費 ）。|
| 費用 | $0 | 按 Token 用量計費（例如 $0.1/1M tokens）。|
| 模型權限 | 可使用大部分模型（Pro/Flash）。 | 可存取更高併發、無浮水印等進階功能。|

### Claude

Claude 為 Anthropic 致力於打造安全且無害的人工智慧語言模型，採用獨家開發專利技術「合憲AI」，基於世界人權宣言（UDHR）與蘋果公司服務條款等法律框架，打造「人類不會害怕的AI」，在科技進步同時，也注重公平正義與隱私，主打創新價值觀並具可靠性讓使用者更安心。

+ [Claude.ai](http://claude.ai/)
	- [Claude Pricing](https://claude.com/pricing)

以下為人工智慧代理人設定步驟：

##### 獲取 Claude AI API 金鑰

1. 前往 [Claude Platforms - API Keys](https://platform.claude.com/settings/keys)。
2. 選擇 "Create an API key"。
3. 複製 API Key 並妥善保存（這是免費的，但有每分鐘調用次數限制）。

##### 替換 .env 參數

對 ```.env``` 檔案中的下列參數，更換為 Google AI API 金鑰。

```
ANTHROPIC_API_KEY=user_provided
```

在本專案請將金鑰以寫在檔案 ```./conf/devops/keys/ANTHROPIC_API_KEY``` 中，在 ```do.bat up``` 時會自動覆蓋 ```.env``` 中的變數。

##### API 調用費用

在 Claude.ai 的用戶計畫 ( 例如 Free plan ) 和 Claude API 是兩個完全獨立的系統，因此，Free Plan ≠ API 免費額度。

而 Claude.ai 的 $20/月訂閱方案（Pro）僅適用於 Claude.ai 網站和 App 應用程式，而 API 的使用是完全獨立計費的，採用單次 token 方式收費。

在每百萬 tokens，於 Claude Haiku 4.5 為 $1 輸入 / $5 輸出，Claude Sonnet 4.5 為 $3 輸入 / $15 輸出，Claude Opus 4.5 為 $5 輸入 / $25 輸出。

### GitHub Copilot

GitHub Copilot 是一款由 GitHub 與 OpenAI 共同開發的 AI 編程助手，能透過分析當前程式碼上下文，即時在編輯器中建議完整函數、程式碼片段、註解甚至單元測試。它能大幅提升開發效率，被視為「AI 對對程式設計師（Pair Programmer）」。

+ [GitHub Copilot](https://github.com/features/copilot)
	- [GitHub Copilot Pricing](https://github.com/features/copilot/plans)
+ [GitHub Copilot CLI 新手入門](https://copilot-cli-for-beginners.gh.miniasp.com/)

以下為人工智慧代理人設定步驟：

##### 獲取 GitHub Copilot API 金鑰

想要取得 GitHub Copilot 的 API，首先需要釐清你的需求。目前 GitHub 並沒有提供像 OpenAI 那樣單純「付費買 Token、呼叫 Completion 接口」的通用公開 API。

目前最常見的方法是使用個人存取權杖 (PAT) 或透過代理工具模擬 OpenAI 的介面，因此，主要步驟如下：

1. 取得 GitHub PAT： 前往 GitHub 設定頁面，建立一個具有 read:user 權限的 Personal Access Token (Classic)。
2. 確定 API 位址： 如果你是使用開源轉發工具，地址通常是 http://localhost:8080/v1。

**因為缺乏轉發服務，對 Copilot 的通訊並不會正常運作**

##### 客製模型配置

LibreChat 的自定義模組主要透過專案根目錄下的 [librechat.yml](./conf/devops/librechat.yml) 進行設定，其配置如下：

```
endpoints:
  custom:
    - name: "GitHub Copilot"
      baseURL: "${COPILOT_API_SERVICE_URL}"
      apiKey: "${COPILOT_API_KEY}"
      models:
        default: ["gpt-4", "gpt-3.5-turbo"]
        fetch: true
      titleConvo: true
      modelDisplayLabel: "Copilot"
```

此外，為運用 librechat.yml 使用，需額外設定兩個檔案：

+ 配置 [docker-compose.override.yml](./conf/devops/docker-compose.override.yml)，確保 librechat.yml 掛載到 LibreChat 服務中。
+ 服務掛載入徑寫在檔案 ```./conf/devops/keys/CONFIG_PATH``` 中，在 ```do.bat up``` 時會自動覆蓋 ```.env``` 中的變數。

##### 替換 .env 參數

在本專案目錄 ```./conf/devops/keys``` 增加兩個參數檔案

+ ```COPILOT_API_SERVICE_URL```，提供 API 轉發服務
+ ```COPILOT_API_KEY```，提供 Github 的 PAT 權杖

在 ```do.bat up``` 時會將參數添加至 ```.env``` 的末尾。
