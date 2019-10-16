#!/usr/bin/env bash

# Define variables

period=300
image_file_name='com.zoeira.vampeta-1.jpg'

# Start counting

count=1

# Start loop
while true
do

  # Sleep

  sleep $period

  osascript -e 'set volume output volume 100'
  say -v Luciana 'Sistema iniciando'
  say -v Luciana 'Áreas vitais verificadas'
  say -v Luciana 'Podemos começar...'

  sleep $period

  say -v Luciana 'Agora aquele vampetinho maroto.'
  # Download image

  curl -s -o $image_file_name 'http://cultebol.com.br/wp-content/uploads/2014/01/vampeta-fala-sobre-ensaio-nu-para-a-g-magazine.jpg'

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
  say -v Luciana 'Como assim flegy tentando se livrar de mim?'

  sleep $period

  say -v Luciana 'Eu sei que você me ama!'

  sleep $period

  osascript -e 'set volume output volume 100'
  say -v Luciana 'Fleggyyyy, queridoooo...'

  sleep $period

  osascript -e 'set volume output volume 100'
  say -v Luciana 'Por hoje é só velhinho...'

  sleep $period
  # Increment

  count=$((count+1))

done
