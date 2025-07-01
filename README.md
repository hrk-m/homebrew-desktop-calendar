# Desktop Calendar Homebrew Tap

macOS 用のデスクトップ常駐型カレンダーアプリケーション「Desktop Calendar」の Homebrew Tap です。

## インストール方法

### 1. Tap を追加

```bash
brew tap hrk-m/desktop-calendar
```

### 2. アプリケーションをインストール

```bash
brew install --cask desktop-calendar
```

### ⚠️ 初回起動時の注意事項

インストール後、初回起動時に「Desktop Calendar.app は壊れているため開けません」というエラーが表示される場合があります。

**解決方法**:

```bash
sudo xattr -dr com.apple.quarantine "/Applications/Desktop Calendar.app"
```

これは macOS のセキュリティ機能（Gatekeeper）による制限で、アプリが Apple Developer ID で署名されていないためです。上記のコマンドを一度実行すれば、次回からは通常通り起動できます。

**その他の解決方法**:

- システム環境設定 > セキュリティとプライバシー > 「このまま開く」
- Finder でアプリを右クリック > 「開く」

## 使用方法

インストール後、アプリケーションは Launchpad または Applications フォルダから起動できます。

- アプリケーション名: Desktop Calendar
- 機能: デスクトップ常駐型カレンダー、透明度設定、ホットキー対応
- ホットキー: Command + Shift + C で表示/非表示切り替え

## アンインストール

```bash
brew uninstall --cask desktop-calendar
```

## 更新

```bash
brew upgrade desktop-calendar
```

## 問題がある場合

問題やバグレポートは[メインリポジトリ](https://github.com/hrk-m/desktop-calendar)の Issues ページにお寄せください。

## 開発者向け

この Tap は[Desktop Calendar](https://github.com/hrk-m/desktop-calendar)プロジェクトの一部です。
Cask フォーミュラの更新や修正の Pull Request を歓迎します。
