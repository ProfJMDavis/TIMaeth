@echo off
IF NOT EXIST "override/TIM_01.wav" goto install
goto end

:install

"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_01.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_02.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_03.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_04.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_05.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_06.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_07.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_08.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_09.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_10.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_11.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_12.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_13.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_14.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_15.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_16.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_17.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_18.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_19.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_20.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_21.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_22.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_23.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_24.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_25.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_26.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_27.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_28.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_29.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_30.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_31.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_32.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_33.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_34.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_35.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_36.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_37.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_38.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_39.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_40.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_41.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_43.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_44.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_45.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_46.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_47.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_48.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_49.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_50.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_51.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_52.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_53.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_54.ogg"
"TIMaeth/audio/oggdec.exe" "TIMaeth/audio/TIM_55.ogg"
move "TIMaeth/audio/*.wav" "override" > nul

:end
::::