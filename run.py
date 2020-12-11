with open("gapic-docker.txt", "r") as f:
  for line in f:
    #print(line)
    line = line.replace('./', '').replace('\n', '')
    synth = line + '.synth'
    #print(synth)
    __import__(line + '.synth')
