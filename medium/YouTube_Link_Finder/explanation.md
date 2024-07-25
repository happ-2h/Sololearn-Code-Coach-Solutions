# Goal
Extract the video ID from a YouTube link

# Relevant Given Information
- URL formats:
  1. `https://www.youtube.com/watch?v=videoID`
  1. `https://youtu.be/videoID`

# Inputs
1. Video URL

# Execution
Since the video ID is at the end of the string, we can start from the back and look for the distinct characters that seperate the video ID from the rest of the URL (which are '=' and '/')

Once we have reached one of those characters, we can print the string from that character + 1 onwards

```lua
-- Finds the index of '=' or '/'
pos = 0
for pos = |url| - 1 to 0 step -1 do
  if url[pos] is '=' or '/' then
    break
  end
end

-- Print the video ID
for i = pos + 1 to |url| do
  output url[i]
end
```