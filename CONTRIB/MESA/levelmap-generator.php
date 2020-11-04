<?php

global $map;

$minx = 999; $maxx = -999;
$miny = 999; $maxy = -999;
$minz = 999; $maxz = -999;

function Parse_Map($data)
{
  global $map, $minx,$miny,$minz, $maxx,$maxy,$maxz;
  $z = 0;
  $y = 0;
  foreach(explode("\n", $data) as $line)
  {
    if($line == '-') { $z = 0; $y += 1; continue; }
    if($line == '') continue;
    for($x=0; $x<25; ++$x)
    {
      $map[$z][$y][$x] = Array(
        'wall' => $line[$x] == 'X',
        'mask_need' => 0,
        'mask_used' => 0
      );
      if($x < $minx) $minx=$x;
      if($y < $miny) $miny=$y;
      if($z < $minz) $minz=$z;
      if($x > $maxx) $maxx=$x;
      if($y > $maxy) $maxy=$y;
      if($z > $maxz) $maxz=$z;
    }
    $z += 1;
  }
}

Parse_Map("
XXXXXXXXXXXXXXXXXXXXXXXXX 0
XXXXXXXXXXXXXXXXXXXXXXXXX 1
XXXXXXXXXXXXXXXXXXXXXXXXX 2
XXXXXXXXXXXXXXXXXXXXXXXXX 3
XXXXXXXXXXXXXXXXXXXXXXXXX 4
XXXXXXXXXXXXXXXXXXXXXXXXX 5
XXXXXXXXXXXXXXXXXXXXXXXXX 6
XXXXXXXXXXXXXXXXXXXXXXXXX 7
XXXXXXXXXXXXXXXXXXXXXXXXX 8
-
XXXXXXXXXXXXXXXXXXXXXXXXX 0
XXXXXXXXXXXXXXXXXXXXXXXXX 1
XXXXXXXXXXXXXXXXXXXXXXXXX 2
XXXXXXXXXXXXXXXXXXXXXXXXX 3
XXXXXXXXXXXXXXXXXXXXXXXXX 4
XXXXXXXXXXXXXXXXXXXXXXXXX 5
XXXXXXXXXXXXXXXXXXXXXXXXX 6
XXXXXXXXXXXXXXXXXXXXXXXXX 7
XXXXXXXXXXXXXXXXXXXXXXXXX 8
-
XXXXXXXXXXXXXXXXXXXXXXXXX 0
X     X       X        XX 1
X             X        XX 2
X             X X   XXXXX 3
X                   XXXXX 4
X       XXX         XXXXX 5
X                   XXXXX 6
X               XXXXXXXXX 7
XXXXXXXXXXXXXXXXXXXXXXXXX 8
-
XXXXXXXXXXXXXXXXXXXXXXXXX 0
X     X                 X 1
X                       X 2
X               X       X 3
X                       X 4
X       XXX             X 5
X                     XXX 6
X               XXXXXXXXX 7
XXXXXXXXXXXXXXXXXXXXXXXXX 8
-
XXXXXXXXXXXXXXXXXXXXXXXXX 0
X       XXX             X 1
X       XXX             X 2
X       XXX     X       X 3
X       XXX             X 4
X       XXX             X 5
X                     XXX 6
X               X   XXXXX 7
XXXXXXXXXXXXXXXXXXXXXXXXX 8
-
XXXXXXXXXXXXXXXXXXXXXXXXX 0
XXXXXXXXXXX     X       X 1
XXXXXXXXXXX     X       X 2
XXXXXXXXXXX     X       X 3
X       XXX     X       X 4
X       XXX     X       X 5
X               X     XXX 6
X               X     XXX 7
XXXXXXXXXXXXXXXXXXXXXXXXX 8
-
XXXXXXXXXXXXXXXXXXXXXXXXX 0
XXXXXXXXXXXXX           X 1
XXXXXXXXXXXXX           X 2
XXXXXXXXXXXXX   X       X 3
XXXXXXXXXXXXX           X 4
XXXXXXXXXXXXX           X 5
XXXXXXX    XX           X 6
XXXXXXX    XX   X     XXX 7
XXXXXXXXXXXXXXXXXXXXXXXXX 8
-
XXXXXXXXXXXXXXXXXXXXXXXXX 0
XXXXXXXXXXXXX           X 1
XXXXXXXXXXXXX           X 2
XXXXXXXXXXXXX   X       X 3
XXXXXXXXXXXXX           X 4
XXXXXXXXXXXXX           X 5
XXXXXXX                 X 6
XXXXXXX         X       X 7
XXXXXXXXXXXXXXXXXXXXXXXXX 8
-
XXXXXXXXXXXXXXXXXXXXXXXXX 0
XXXXXXXXXXXXX           X 1
XXXXXXXXXXXXX           X 2
XXXXXXXXXXXXX   X       X 3
XXXXXXXXXXXXX           X 4
XXXXXXXXXXXXX           X 5
XXXXXXX    XX           X 6
XXXXXXX    XX   X       X 7
XXXXXXXXXXXXXXXXXXXXXXXXX 8
-
XXXXXXXXXXXXXXXXXXXXXXXXX 0
XXXXXXXXXXXXXXXXXXXXXXXXX 1
XXXXXXXXXXXXXXXXXXXXXXXXX 2
XXXXXXXXXXXXXXXXXXXXXXXXX 3
XXXXXXXXXXXXXXXXXXXXXXXXX 4
XXXXXXXXXXXXXXXXXXXXXXXXX 5
XXXXXXX    XXXXXXXXXXXXXX 6
XXXXXXX    XXXXXXXXXXXXXX 7
XXXXXXXXXXXXXXXXXXXXXXXXX 8
-
XXXXXXXXXXXXXXXXXXXXXXXXX 0
XXXXXXXXXXXXXXXXXXXXXXXXX 1
XXXXXXXXXXXXXXXXXXXXXXXXX 2
XXXXXXXXXXXXXXXXXXXXXXXXX 3
XXXXXXXXXXXXXXXXXXXXXXXXX 4
XXXXXXXXXXXXXXXXXXXXXXXXX 5
XXXXXXX    XXXXXXXXXXXXXX 6
XXXXXXX    XXXXXXXXXXXXXX 7
XXXXXXXXXXXXXXXXXXXXXXXXX 8
-
XXXXXXXXXXXXXXXXXXXXXXXXX 0
XXXXXXXXXXXXXXXXXXXXXXXXX 1
XXXXXXXXXXXXXXXXXXXXXXXXX 2
XXXXXXXXXXXXXXXXXXXXXXXXX 3
XXXXXXXXXXXXXXXXXXXXXXXXX 4
XXXXXXXXXXXXXXXXXXXXXXXXX 5
XXXXXXX    XXXXXXXXXXXXXX 6
XXXXXXX    XXXXXXXXXXXXXX 7
XXXXXXXXXXXXXXXXXXXXXXXXX 8
-
XXXXXXXXXXXXXXXXXXXXXXXXX 0
XXXXXXXXXXXXXXXXXXXXXXXXX 1
XXXXXXXXXXXXXXXXXXXXXXXXX 2
XXXXXXXXXXXXXXXXXXXXXXXXX 3
XXXXXXXXXXXXXXXXXXXXXXXXX 4
XXXXXXXXXXXXXXXXXXXXXXXXX 5
XXXXXXX    XXXXXXXXXXXXXX 6
XXXXXXX    XXXXXXXXXXXXXX 7
XXXXXXXXXXXXXXXXXXXXXXXXX 8
-
XXXXXXXXXXXXXXXXXXXXXXXXX 0
XXXXXXXXXXXXXXXXXXXXXXXXX 1
XXXXXXXXXXXXXXXXXXXXXXXXX 2
XXXXXXXXXXXXXXXXXXXXXXXXX 3
XXXXXXXXXXXXXXXXXXXXXXXXX 4
XXXXXXXXXXXXXXXXXXXXXXXXX 5
XXXXXXX    XXXXXXXXXXXXXX 6
XXXXXXX    XXXXXXXXXXXXXX 7
XXXXXXXXXXXXXXXXXXXXXXXXX 8
-
XXXXXXXXXXXXXXXXXXXXXXXXX 0
XXXXXXXXXXXXXXXXXXXXXXXXX 1
XXXXXXXXXXXXXXXXXXXXXXXXX 2
XXXXXXXXXXXXXXXXXXXXXXXXX 3
XXXXXXXXXXXXXXXXXXXXXXXXX 4
XXXXXXXXXXXXXXXXXXXXXXXXX 5
XXXXXXX    XXXXXXXXXXXXXX 6
XXXXXXX    XXXXXXXXXXXXXX 7
XXXXXXXXXXXXXXXXXXXXXXXXX 8
-
XXXXXXXXXXXXXXXXXXXXXXXXX 0
XXXXXXXXXXXXXXXXXXXXXXXXX 1
XXXXXXXXXXXXXXXXXXXXXXXXX 2
XXXXXXXXXXXXXXXXXXXXXXXXX 3
XXXXXXXXXXXXXXXXXXXXXXXXX 4
XXXXXXXXXXXXXXXXXXXXXXXXX 5
XXXXXXX    XXXXXXXXXXXXXX 6
XXXXXXX    XXXXXXXXXXXXXX 7
XXXXXXXXXXXXXXXXXXXXXXXXX 8
-
XXXXXXXXXXXXXXXXXXXXXXXXX 0
XXXXXXXXXXXXXXXXXXXXXXXXX 1
XXXXXXXXXXXXXXXXXXXXXXXXX 2
XXXXXXXXXXXXXXXXXXXXXXXXX 3
XXXXXXXXXXXXXXXXXXXXXXXXX 4
XXXXXXXXXXXXXXXXXXXXXXXXX 5
XXXXXXX    XXXXXXXXXXXXXX 6
XXXXXXX    XXXXXXXXXXXXXX 7
XXXXXXXXXXXXXXXXXXXXXXXXX 8
-
XXXXXXXXXXXXXXXXXXXXXXXXX 0
XXXXXXXXXXXXXXXXXXXXXXXXX 1
XXXXXXXXXXXXXXXXXXXXXXXXX 2
XXXXXXXXXXXXXXXXXXXXXXXXX 3
XXXXXXXXXXXXXXXXXXXXXXXXX 4
XXXXXXXXXXXXXXXXXXXXXXXXX 5
XXXXXXX    XXXXXXXXXXXXXX 6
XXXXXXX    XXXXXXXXXXXXXX 7
XXXXXXXXXXXXXXXXXXXXXXXXX 8
-
XXXXXXXXXXXXXXXXXXXXXXXXX 0
XXXXXXXXXXXXXXXXXXXXXXXXX 1
XXXXXXXXXXXXXXXXXXXXXXXXX 2
XXXXXXXXXXXXXXXXXXXXXXXXX 3
XXXXXXXXXXXXXXXXXXXXXXXXX 4
XXXXXXXXXXXXXXXXXXXXXXXXX 5
XXXXXXXXXXXXXXXXXXXXXXXXX 6
XXXXXXXXXXXXXXXXXXXXXXXXX 7
XXXXXXXXXXXXXXXXXXXXXXXXX 8
");

$corner_vertices = Array(
  Array(-.5,-.5,-.5), Array(-.5,-.5,.5), Array(-.5,.5,.5), Array(-.5,.5,-.5),
  Array( .5,-.5,-.5), Array( .5,-.5,.5), Array( .5,.5,.5), Array( .5,.5,-.5)
);

$faces = Array(
  // Face 0: +X is set if @0 is clear and -X is occupied
  0 => Array('x' => -1, 'y' =>  0, 'z' =>  0,  'v' => Array(0,1,2,3)),
  1 => Array('x' =>  0, 'y' =>  1, 'z' =>  0,  'v' => Array(3,2,6,7)),
  2 => Array('x' =>  1, 'y' =>  0, 'z' =>  0,  'v' => Array(7,6,5,4)),
  3 => Array('x' =>  0, 'y' => -1, 'z' =>  0,  'v' => Array(4,5,1,0)),
  4 => Array('x' =>  0, 'y' =>  0, 'z' =>  1,  'v' => Array(5,6,2,1)),
  5 => Array('x' =>  0, 'y' =>  0, 'z' => -1,  'v' => Array(7,4,0,3))
);

// Find out where each face is needed
foreach($faces as $faceno => $facedata)
{
  extract($facedata, EXTR_OVERWRITE|EXTR_PREFIX_ALL, 'wall'); // $wall_x,$wall_y,$wall_z
  for($z=$minz; $z<=$maxz; ++$z)
  for($y=$miny; $y<=$maxy; ++$y)
  for($x=$minx; $x<=$maxx; ++$x)
  {
    if($x == $minx && $faceno == 0) continue;
    if($y == $miny && $faceno == 3) continue;
    if($z == $minz && $faceno == 5) continue;
    if($x == $maxx && $faceno == 2) continue;
    if($y == $maxy && $faceno == 1) continue;
    if($z == $maxz && $faceno == 4) continue;

    $w = &$map[$z][$y][$x];
    if($w['wall']
    && !@$map[$z + $wall_z]
             [$y + $wall_y]
             [$x + $wall_x]['wall'])
    {
      $w['mask_need'] |= (1 << $faceno);
    }
  }
}
unset($w);
//print_r($map);

ob_start();

// Choose the hyper-rectangles to render
for($x1=$minx; $x1<=$maxx; ++$x1)
for($y1=$miny; $y1<=$maxy; ++$y1)
for($z1=$minz; $z1<=$maxz; ++$z1)
{
  foreach($faces as $faceno => $facedata)
  {
    extract($facedata, EXTR_OVERWRITE|EXTR_PREFIX_ALL, 'wall'); // $wall_x,$wall_y,$wall_z
    $w = $map[$z1][$y1][$x1];
    if( ($w['mask_need'] & (1 << $faceno))
    && !($w['mask_used'] & (1 << $faceno)) )
    {
      // Grow it in Z axis (in a line formation)
      for($z2=$z1; ++$z2<=$maxz; )
      {
        $w2 = $map[$z2][$y1][$x1];
        if( ($w2['mask_need'] & (1 << $faceno))
        && !($w2['mask_used'] & (1 << $faceno)) ) continue;
        break;
      }
      --$z2;
      // Grow it in Y axis (in a rectangle formation (for each Z))
      for($y2=$y1; ++$y2<=$maxy; )
        for($z = $z1; $z <= $z2; ++$z)
        {
          $w2 = $map[$z][$y2][$x1];
          if( ($w2['mask_need'] & (1 << $faceno))
          && !($w2['mask_used'] & (1 << $faceno)) ) continue;
          break 2;
        }
      --$y2;
      // Grow it in X axis (in a box formation (for each Z, Y)
      for($x2=$x1; ++$x2<=$maxx; )
        for($y = $y1; $y <= $y2; ++$y)
        for($z = $z1; $z <= $z2; ++$z)
        {
          $w2 = $map[$z][$y][$x2];
          if( ($w2['mask_need'] & (1 << $faceno))
          && !($w2['mask_used'] & (1 << $faceno)) ) continue;
          break 3;
        }
      --$x2;
      // Paint it done
      for($x = $x1; $x <= $x2; ++$x)
      for($y = $y1; $y <= $y2; ++$y)
      for($z = $z1; $z <= $z2; ++$z)
      {
        $map[$z][$y][$x]['mask_used'] |= (1 << $faceno);
      }

      $points = Array();
      for($c=0; $c<4; ++$c)
      {
        $v = $corner_vertices[$wall_v[$c]];
        $points[$c] = Array(
          $v[0] + ($v[0] < 0 ? $x1 : $x2),
          $v[1] + ($v[1] < 0 ? $y1 : $y2),
          $v[2] + ($v[2] < 0 ? $z1 : $z2) );
      }
      
      $normal = Array($wall_x, $wall_y, $wall_z);

      /*
      $e01 = Array( $points[1][0] - $points[0][0],
                    $points[1][1] - $points[0][1],
                    $points[1][2] - $points[0][2]);
      $e02 = Array( $points[2][0] - $points[0][0],
                    $points[2][1] - $points[0][1],
                    $points[2][2] - $points[0][2]);
      $e03 = Array( $points[3][0] - $points[0][0],
                    $points[3][1] - $points[0][1],
                    $points[3][2] - $points[0][2]);
      $vn  = Array( $e01[1]*$e03[2] - $e01[2]*$e03[1],
                    $e01[2]*$e03[0] - $e01[0]*$e03[2],
                    $e01[0]*$e03[1] - $e01[1]*$e03[0] );
      if ((abs($vn[0]) >= abs($vn[1]))
       && (abs($vn[0]) >= abs($vn[2])))
      {
          $alpha11 = (($e02[1] * $e03[2]) - ($e02[2] * $e03[1])) / $vn[0];
          $beta11  = (($e01[1] * $e02[2]) - ($e01[2] * $e02[1])) / $vn[0];
      }
      else if ((abs($vn[1]) >= abs($vn[0]))
            && (abs($vn[1]) >= abs($vn[2])))
      {
          $alpha11 = (($e02[2] * $e03[0]) - ($e02[0] * $e03[2])) / $vn[1];
          $beta11  = (($e01[2] * $e02[0]) - ($e01[0] * $e02[2])) / $vn[1];
      }
      else
      {
          $alpha11 = (($e02[0] * $e03[1]) - ($e02[1] * $e03[0])) / $vn[2];
          $beta11  = (($e01[0] * $e02[1]) - ($e01[1] * $e02[0])) / $vn[2];
      }*/

      if(0)printf(" {{%2d,%2d,%2d}, {{%2g,%2g,%1g},{%2g,%2g,%1g},{%2g,%2g,%1g},{%2g,%2g,%1g}} },\n",
        $normal[0],$normal[1],$normal[2],
        //$faceno,
        //$distance,
        //$x1,$y1,$z1, {{%2d,%2d,%d}, {%2d,%2d,%d}}, 
        //$x2,$y2,$z2,
        0.5+$points[0][0],0.5+$points[0][1],0.5+$points[0][2],
        0.5+$points[1][0],0.5+$points[1][1],0.5+$points[1][2],
        0.5+$points[2][0],0.5+$points[2][1],0.5+$points[2][2],
        0.5+$points[3][0],0.5+$points[3][1],0.5+$points[3][2]
      );

      printf(" quad(<%2g,%2g,%1g>,<%2g,%2g,%1g>,<%2g,%2g,%1g>,<%2g,%2g,%1g>)\n",
        //$normal[0],$normal[1],$normal[2],
        //$faceno,
        //$distance,
        //$x1,$y1,$z1, {{%2d,%2d,%d}, {%2d,%2d,%d}}, 
        //$x2,$y2,$z2,
        0.5+$points[0][0],0.5+$points[0][1],0.5+$points[0][2],
        0.5+$points[1][0],0.5+$points[1][1],0.5+$points[1][2],
        0.5+$points[2][0],0.5+$points[2][1],0.5+$points[2][2],
        0.5+$points[3][0],0.5+$points[3][1],0.5+$points[3][2]
      );
    }
  }
}
exit;

for($z=$minz; $z<=$maxz; ++$z)
for($y=$miny; $y<=$maxy; ++$y)
for($x=$minx; $x<=$maxx; ++$x)
{
  $w = &$map[$z][$y][$x];
  if($w['mask_need'] != $w['mask_used'])
  {
    print "unused at $x, $y, $z\n";
  }
}  

$lines = explode("\n", preg_replace("/\n$/", '', ob_get_clean()));
$column1 = $lines;

if(1) {
sort($lines);
/* TODO: Pick consecutively most similar lines to previous one from remaining lines,
 *       and do this in two columns. The seed to column 2 is the most similar one
 *       to the first item.
 */

$seed1 = array_shift($lines);

$column1 = Array($seed1);

while(!empty($lines))
{
  $best1 = 9999; $bestno1 = 0;
  if(count($lines) > 1) // test two
  {
    foreach($lines as $no => $line)
      foreach($lines as $no2 => $line2)
        if($no2 != $no)
        {
          $l = levenshtein($seed1, $line, 1,1,1);
          $l += levenshtein($line, $line2, 1,1,1)*0.5;
          if($l < $best1)
          {
            $best1 = $l;
            $bestno1 = $no;
          }
        }
  }
  else // one element
  {
    foreach($lines as $no => $line)
    {
      $l = levenshtein($seed1, $line, 1,1,1);
      if($l < $best1)
      {
        $best1 = $l;
        $bestno1 = $no;
      }
    }
  }

  $column1[] = ($seed1 = $lines[$bestno1]);
  unset($lines[$bestno1]);
}
}

$n=0;
foreach($column1 as $c => $r)
{
  print "   $r";
  print " // $n\n";
  ++$n;
}
