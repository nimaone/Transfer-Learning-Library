MODEL:
  META_ARCHITECTURE: "TLRetinaNet"
  WEIGHTS: "detectron2://ImageNetPretrained/MSRA/R-101.pkl"
  BACKBONE:
    NAME: "build_retinanet_resnet_fpn_backbone"
  MASK_ON: False
  RESNETS:
    DEPTH: 101
    OUT_FEATURES: ["res3", "res4", "res5" ]
  ANCHOR_GENERATOR:
    SIZES: !!python/object/apply:eval [ "[[x, x * 2**(1.0/3), x * 2**(2.0/3) ] for x in [32, 64, 128, 256, 512 ]]" ]
  RETINANET:
    NUM_CLASSES: 1
    IN_FEATURES: ["p3", "p4", "p5", "p6", "p7"]
    IOU_THRESHOLDS: [ 0.4, 0.5 ]
    IOU_LABELS: [ 0, -1, 1 ]
    SMOOTH_L1_LOSS_BETA: 0.0
  FPN:
    IN_FEATURES: ["res3", "res4", "res5"]
INPUT:
  MIN_SIZE_TRAIN: (480, 512, 544, 576, 608, 640, 672, 704, )
  MIN_SIZE_TEST: 608
  MAX_SIZE_TRAIN: 1080
DATASETS:
  TRAIN: ('dataset_train_synthetic',)
  TEST: ('dataset_test_real',)
SOLVER:
  STEPS: (12000, )
  MAX_ITER: 10000  # 16 epochs
  WARMUP_ITERS: 500
  CHECKPOINT_PERIOD: 1000
  IMS_PER_BATCH: 8
  BASE_LR: 0.005
TEST:
  EVAL_PERIOD: 500
VIS_PERIOD: 500
VERSION: 2
