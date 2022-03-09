-- Ball class.
Ball = {}
Ball.__index = Ball

-- Constructor.
function Ball.new( m, r, color, t, p )
    local instance = setmetatable( {}, Ball )

    instance.m = m
    instance.x_pos = math.random( 0, love.graphics.getWidth() )
    instance.y_pos = math.random( 0, love.graphics.getHeight() )
    instance.radius = r
    instance.color = color
    instance.timer = t
    instance.points = p

    return instance
end

-- Draw the ball on the screen.
function Ball:draw()
    love.graphics.setColor( self.color[ 1 ], self.color[ 2 ], self.color[ 3 ], self.color[ 4 ] )
    love.graphics.circle( self.m, self.x_pos, self.y_pos, self.radius )
end

-- Get position of the ball.
function Ball:get_position()
    return { self.x_pos, self.y_pos }
end

-- Get radius of the ball.
function Ball:get_radius()
    return self.radius
end

-- Get points for the ball.
function Ball:get_points()
    return self.points
end
