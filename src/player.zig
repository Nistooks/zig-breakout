const rl = @import("raylib");

pub const player = struct {
    const speed = 1000;
    var position: @Vector(2, i32) = .{ 500, 850 };
    const width = 200;
    const height = 30;
    const color = rl.Color.orange;

    pub fn draw() void {
        rl.drawRectangle(position[0], position[1], width, height, color);
    }

    pub fn moveLeft() void {
        position -= .{ @intFromFloat(1 * speed * rl.getFrameTime()), 0 };
    }

    pub fn moveRight() void {
        position += .{ @intFromFloat(1 * speed * rl.getFrameTime()), 0 };
    }
};
