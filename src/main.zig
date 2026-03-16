const std = @import("std");
const rl = @import("raylib");
const input = @import("input.zig");
const player = @import("player.zig");
const ball = @import("ball.zig");

pub fn main() void {
    std.debug.print("Hello World on Linux!", .{});
    rl.initWindow(1600, 900, "Hello raylib-zig on Linux!");
    const refresh_rate = rl.getMonitorRefreshRate(0);
    rl.setTargetFPS(refresh_rate);

    while (!rl.windowShouldClose()) {
        input.inputManager();
        rl.beginDrawing();

        rl.clearBackground(rl.Color.blue);

        player.player.draw();
        ball.ball.move(.{ -1, 1 });
        ball.ball.draw();
        rl.endDrawing();
    }
}
