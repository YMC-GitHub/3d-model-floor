--clearlistener()
struct YmcSet
(
	--public
	public
		size=0,
        data=#(),
        -- he has val?
		fn has val = 
		(
            local result=undefined
            local index=undefined
            local data=undefined

            result="false"
            data=this.data
			--for index in data do
			for index=1 to data.count do
			(
				if(data[index]==val)then(
                    result="true"
                )
            )
            return result
        ),
		fn getSize =
        (
            return this.data.count 
        ),
		fn add val = 
		(
            local index=undefined
            local data=undefined
            local hasVal=undefined
            hasVal=(this.has val)
            
            if (hasVal=="false") then(
                index=this.getSize()
                data=this.data
                data[(index+1)]=val
            )
            this.size=this.data.count
            return this
        ),
        fn del val = 
		(
            local newData=undefined
            local index=undefined
            local data=undefined
            newData=#()
            data=this.data
            --for index in data do
			for index=1 to data.count do
			(
				if(data[index]!=val)then(
                    newData[index]=data[index]
                )
            )
            this.data=newData
            this.size=this.data.count
            return this
        ),
		fn getByIndex index = 
		(
            local data=undefined
            local result=undefined
            data=this.data
            if(data[index]!=undefined)then(
                result=data[index]
            )
            return result
        ),
		fn delByIndex index = 
		(
            local newData=undefined
            local data=undefined
            local count=undefined
            local i=undefined
            newData=#()
            data=this.data
            count=data.count
            if (index>=1 and index<=count) then(
                --for i in data do
				for i=1 to data.count do
                    (
                        if(index!=i)then(
                            newData[index]=data[index]
                        )
                    )
                    this.data=newData
            )
            this.size=this.data.count
            return this
        ),
		fn getIndex val = 
		(
            local result=undefined
            local index=undefined
            local data=undefined
            data=this.data
			--for index in data do
			for index=1 to data.count do
			(
				if data[index]==val then(
                    result=index
                )
            )
            return result
        )
)


/*
f = YmcSet()
f.size
f.has "xx"
f.add "xx"
f.getSize()
f.del "xx"
f.add "xx"
f.getIndex "xx"
f.getByIndex 1
f.delByIndex 1
*/
/*
f = YmcSet()
while f.size <=10 do
( 
print f.size
)
*/
--f.add (color (random 0  255) (random 0  255) (random 0  255))
 -- add str
 /*
 val=random 1 100
 val=val as string
 f.add  val
 */
/*
 -- add num
 val=random 1 100
 f.add val
 */
 -- add color
 /*
 val=(color (random 0  255) (random 0  255) (random 0  255))
 f.add val
 */
  -- add point
 /*
 val=[(random 0  255), (random 0  255), (random 0  255)]
 f.add val
 */
