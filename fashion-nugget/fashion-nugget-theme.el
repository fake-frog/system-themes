;;; fashion-nugget-theme.el --- Reluctantly crouched at the starting line -*- lexical-binding: t; -*-

(require 'fashion-nugget-common
	 (expand-file-name "fashion-nugget-common" (file-name-directory load-file-name)))

(deftheme fashion-nugget
  "A magical toad, but it's daytime."
  :kind 'color-scheme
  :family 'fashion-nugget
  :background-mode 'light)

(fashion-nugget--set-faces
 'fashion-nugget
 "#f7f3ee"   ; bg
 "#f1ebe4"   ; bg-slight
 "#cdc7bf"   ; bg-soft
 "#85b692"   ; bg-raised
 "#2a2a2a"   ; fg
 "#434343"   ; fg-dim
 "#ffe7f7"   ; accent
 "#ffe4d4"   ; accent-alt
 "#ceebd5"   ; special
 "#e3e8ff"   ; purple
 "#a45f91"   ; accent-ink      (text-strength accent)
 "#ab6535"   ; accent-alt-ink
 "#378553"   ; special-ink
 "#6671b8")  ; purple-ink

(provide-theme 'fashion-nugget)

;;; fashion-nugget-theme.el ends here
