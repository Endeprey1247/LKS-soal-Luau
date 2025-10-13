local Stack = {}
Stack.__index = Stack

function Stack.new()
	local self = setmetatable({}, Stack)

	self._stack = {}

	return self
end

-- Check if the stack is empty
function Stack:isEmpty()
	return #self._stack == 0
end

-- Put a new value onto the stack
function Stack:push(value)
	table.insert(self._stack, value)
end

-- Take a value off the stack
function Stack:pop()
	if self:isEmpty() then
		return nil
	end

	return table.remove(self._stack, #self._stack)
end

return Stack
