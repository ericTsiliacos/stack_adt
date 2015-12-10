module StackSpec (spec) where

import Stack
import Test.Hspec

spec :: Spec
spec = do
  describe "isEmpty" $ do
    context "when nothing has been pushed onto the stack" $ do
      it "is empty" $ do
        isEmpty empty `shouldBe` True

    context "when the stack has at least one item" $ do
      it "returns false" $ do
        isEmpty (push 1 empty) `shouldBe` False
