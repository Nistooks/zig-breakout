const std = @import("std");
const rl = @import("raylib");
const keybinds = @import("keybinds.zig");
const player = @import("player.zig");

pub fn inputManager() void {
    if (rl.isMouseButtonPressed(keybinds.left_click)) {
        std.debug.print("Left click is pressed\n", .{});
    }

    if (rl.isMouseButtonPressed(keybinds.right_click)) {
        std.debug.print("Right click is pressed\n", .{});
    }

    if (rl.isKeyDown(keybinds.left)) {
        player.player.moveLeft();
    }

    if (rl.isKeyDown(keybinds.right)) {
        player.player.moveRight();
    }
}
