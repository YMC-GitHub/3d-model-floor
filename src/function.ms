-- 随机颜色
fn randomColor arr =(
    RANDOM_NUM=1
    if( arr.count>1)then(RANDOM_NUM=random 1  arr.count)
    return arr[RANDOM_NUM]
  )
  -- 随机图片
  fn randomImage arr =(
    return randomColor arr
  )

  fn dumStr str len = (
    local result=""
    for m=1 to len do (
      result=result+str
    )
    return result
  )
  -- dumStr "0" 5
  -- "00000"
  
  fn formatStr str len prefix = (
    local result=""
    if( str.count<len)then(
      result=(dumStr prefix (len - str.count))+str
    )else(
      result=str
    )
    return result
  )
  -- formatStr "01" 5 "0" --"00001"
  -- formatStr "11" 5 "-" --"---11"
  