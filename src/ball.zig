const rl = @import("raylib");

pub const ball = struct {
    const size = 10;
    const speed = 500;
    var position: @Vector(2, f32) = .{ 500, 500 };
    const color = rl.Color.ray_white;

    pub fn move(move_vector: @Vector(2, f32)) void {
        position += move_vector;
    }

    pub fn draw() void {
        rl.drawRectangle(@intFromFloat(position[0]), @intFromFloat(position[1]), size, size, color);
    }
};
