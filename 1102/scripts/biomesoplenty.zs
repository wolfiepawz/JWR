# biomesoplenty.zs tweaks

import minetweaker.item.IItemStack;

# Foregeign items

val Dirt = <minecraft:dirt:0>;
val CoarseDirt = <minecraft:dirt:1>;
val Grass = <minecraft:grass:0>;
val GrassPath = <minecraft:grass_path:0>;

# This mod's items

val BOPDirts = [
  <biomesoplenty:dirt:0>,
  <biomesoplenty:dirt:1>,
  <biomesoplenty:dirt:2>
] as IItemStack[];

val BOPCoarseDirts = [
  <biomesoplenty:dirt:8>,
  <biomesoplenty:dirt:9>,
  <biomesoplenty:dirt:10>
] as IItemStack[];

val BOPGrasses = [
  <biomesoplenty:grass:0>,
  <biomesoplenty:grass:1>,
  <biomesoplenty:grass:2>,
  <biomesoplenty:grass:3>,
  <biomesoplenty:grass:4>,
  <biomesoplenty:grass:5>,
  <biomesoplenty:grass:6>,
  <biomesoplenty:grass:7>,
] as IItemStack[];

val BOPGrassPaths = [
  <biomesoplenty:grass_path:0>,
  <biomesoplenty:grass_path:1>,
  <biomesoplenty:grass_path:2>
] as IItemStack[];

# Tweaks

# dirt conversions

for bopDirt in BOPDirts
{
  recipes.addShapeless(Dirt, [bopDirt]);
  <ore:dirt>.add(bopDirt);
  <ore:blockDirt>.add(bopDirt);
}

for bopCoarseDirt in BOPCoarseDirts
{
  recipes.addShapeless(CoarseDirt, [bopCoarseDirt]);
  <ore:dirt>.add(bopCoarseDirt);
}

# grasses conversions

for bopGrass in BOPGrasses
{
  recipes.addShapeless(Grass, [bopGrass]);
  <ore:grass>.add(bopGrass);
  <ore:blockGrass>.add(bopGrass);
}

for bopGrassPath in BOPGrassPaths
{
  recipes.addShapeless(GrassPath, [bopGrassPath]);
}
