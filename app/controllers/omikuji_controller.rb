class OmikujiController < ApplicationController
  def index
  end
  def index
    gorilla_omikuji = [
      # 超レア：1枠ずつ
      { result: "ゴリラ大大吉", message: "伝説のバナナが舞い降りる！筋肉も運もMAX、今日は何でもウホウホ進む日！" },
      { result: "ゴリラ超吉", message: "ゴリラパワーがあなたに味方する！ウホウホ楽しんで、笑顔で過ごそう！" },

      # 良い運勢：2枠ずつ
      { result: "大ウホ吉", message: "仲間と力を合わせればバナナ山盛り！友情運アップ！" },
      { result: "大ウホ吉", message: "仲間と力を合わせればバナナ山盛り！友情運アップ！" },
      { result: "ウホ吉", message: "今日は筋トレ日和！バナナパワーで元気百倍！" },
      { result: "ウホ吉", message: "今日は筋トレ日和！バナナパワーで元気百倍！" },

      # 普通運勢：4枠ずつ
      { result: "中ウホ吉", message: "落ち着いて行動すればウホっと良いことがあるかも？" },
      { result: "中ウホ吉", message: "落ち着いて行動すればウホっと良いことがあるかも？" },
      { result: "中ウホ吉", message: "落ち着いて行動すればウホっと良いことがあるかも？" },
      { result: "中ウホ吉", message: "落ち着いて行動すればウホっと良いことがあるかも？" },

      { result: "小ウホ吉", message: "深呼吸してウホっと一息。今日は平和な一日！" },
      { result: "小ウホ吉", message: "深呼吸してウホっと一息。今日は平和な一日！" },
      { result: "小ウホ吉", message: "深呼吸してウホっと一息。今日は平和な一日！" },
      { result: "小ウホ吉", message: "深呼吸してウホっと一息。今日は平和な一日！" },

      { result: "バナナ吉", message: "おやつにバナナを食べると運気UPウホ！" },
      { result: "バナナ吉", message: "おやつにバナナを食べると運気UPウホ！" },
      { result: "バナナ吉", message: "おやつにバナナを食べると運気UPウホ！" },
      { result: "バナナ吉", message: "おやつにバナナを食べると運気UPウホ！" },

      { result: "筋肉吉", message: "筋トレの後はプロテイン！コツコツが大事ウホ！" },
      { result: "筋肉吉", message: "筋トレの後はプロテイン！コツコツが大事ウホ！" },
      { result: "筋肉吉", message: "筋トレの後はプロテイン！コツコツが大事ウホ！" },
      { result: "筋肉吉", message: "筋トレの後はプロテイン！コツコツが大事ウホ！" },

      { result: "ウホ末吉", message: "ちょっとした親切が大きなウホにつながるウホ！" },
      { result: "ウホ末吉", message: "ちょっとした親切が大きなウホにつながるウホ！" },
      { result: "ウホ末吉", message: "ちょっとした親切が大きなウホにつながるウホ！" },
      { result: "ウホ末吉", message: "ちょっとした親切が大きなウホにつながるウホ！" },

      { result: "平和ウホ", message: "何事も慌てずウホウホ。平穏が一番ウホ！" },
      { result: "平和ウホ", message: "何事も慌てずウホウホ。平穏が一番ウホ！" },
      { result: "平和ウホ", message: "何事も慌てずウホウホ。平穏が一番ウホ！" },
      { result: "平和ウホ", message: "何事も慌てずウホウホ。平穏が一番ウホ！" },

      # 悪い運勢：1枠ずつ
      { result: "ウホ凶", message: "今日は慎重に。バナナは落とさないようにウホ。" },
      { result: "ゴリラ凶", message: "無理せず一休み。ウホ…バナナチャージを忘れずに。" }
    ]
    @result = gorilla_omikuji.sample
  end
end
