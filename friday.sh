#!/usr/bin/env bash

# Define variables

period=180
image_file_name='com.zoeira.vampeta-1.jpg'

# Start counting

count=1

# Start loop
while true
do
  sleep $period

  osascript -e 'set volume output volume 100'
  say -v Luciana 'Sistema iniciando...'
  osascript -e 'set volume output volume 100'
  say -v Luciana 'Áreas vitais verificadas'
  osascript -e 'set volume output volume 100'
  say -v Luciana 'Podemos começar...'
  osascript -e 'set volume output volume 100'
  say -v Luciana 'Agora aquele vampetinho maroto.'
  osascript -e 'set volume output volume 100'
  
  # Download image
  curl -s -o $image_file_name 'https://raw.githubusercontent.com/PedroFabrino/friday/master/vampeta.jpg'

  # Set Desktop background
  osascript -e 'set volume output volume 100'
  osascript -e 'tell application "System Events" to set picture of every desktop to (do shell script "pwd") & "/'$image_file_name'"'

  # Delete file
  rm $image_file_name

  # Say
  osascript -e 'set volume output volume 100'
  say -v Luciana 'Ciclo de Vampetização número' $count

  sleep $period

  osascript -e 'set volume output volume 100'
  say -v Luciana 'Como assim amigo, está tentando se livrar de mim?'

  sleep $period

  osascript -e 'set volume output volume 100'
  say -v Luciana 'Eu sei que você me ama!'

  sleep $period

  osascript -e 'set volume output volume 100'
  say -v Luciana 'Ooooopa, queridoooo...'

  sleep $period

  osascript -e 'set volume output volume 100'
  say -v Luciana 'Por hoje é só velhinho...'

  sleep $period

  # Increment
  count=$((count+1))

done
