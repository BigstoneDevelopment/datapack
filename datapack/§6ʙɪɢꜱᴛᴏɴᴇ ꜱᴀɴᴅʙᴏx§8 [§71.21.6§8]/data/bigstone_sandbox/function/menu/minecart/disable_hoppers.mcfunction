# Stop hoppers
# -1 Layer
# Below
execute if block ~ ~-1 ~ minecraft:hopper run data merge block ~ ~-1 ~ {TransferCooldown:8}
# + Shape
execute if block ~1 ~-1 ~ minecraft:hopper run data merge block ~1 ~-1 ~ {TransferCooldown:8}
execute if block ~ ~-1 ~1 minecraft:hopper run data merge block ~ ~-1 ~1 {TransferCooldown:8}
execute if block ~-1 ~-1 ~ minecraft:hopper run data merge block ~-1 ~-1 ~ {TransferCooldown:8}
execute if block ~ ~-1 ~-1 minecraft:hopper run data merge block ~ ~-1 ~-1 {TransferCooldown:8}
# Corners
execute if block ~1 ~-1 ~1 minecraft:hopper run data merge block ~1 ~-1 ~1 {TransferCooldown:8}
execute if block ~-1 ~-1 ~-1 minecraft:hopper run data merge block ~-1 ~-1 ~-1 {TransferCooldown:8}
execute if block ~-1 ~-1 ~1 minecraft:hopper run data merge block ~-1 ~-1 ~1 {TransferCooldown:8}
execute if block ~1 ~-1 ~-1 minecraft:hopper run data merge block ~1 ~-1 ~-1 {TransferCooldown:8}
# 0 Layer
# Below
execute if block ~ ~ ~ minecraft:hopper run data merge block ~ ~ ~ {TransferCooldown:8}
# + Shape
execute if block ~1 ~ ~ minecraft:hopper run data merge block ~1 ~ ~ {TransferCooldown:8}
execute if block ~ ~ ~1 minecraft:hopper run data merge block ~ ~ ~1 {TransferCooldown:8}
execute if block ~-1 ~ ~ minecraft:hopper run data merge block ~-1 ~ ~ {TransferCooldown:8}
execute if block ~ ~ ~-1 minecraft:hopper run data merge block ~ ~ ~-1 {TransferCooldown:8}
# Corners
execute if block ~1 ~ ~1 minecraft:hopper run data merge block ~1 ~ ~1 {TransferCooldown:8}
execute if block ~-1 ~ ~-1 minecraft:hopper run data merge block ~-1 ~ ~-1 {TransferCooldown:8}
execute if block ~-1 ~ ~1 minecraft:hopper run data merge block ~-1 ~ ~1 {TransferCooldown:8}
execute if block ~1 ~ ~-1 minecraft:hopper run data merge block ~1 ~ ~-1 {TransferCooldown:8}