module StackSpec (spec) where

import Stack
import Test.Hspec

spec :: Spec
spec =
  describe "isEmpty" $ do
    context "when nothing has been pushed onto the stack" $
      it "returns true" $
        isEmpty empty `shouldBe` True

    context "when the stack has at least one item" $
      it "returns false" $
        isEmpty (push 1 empty) `shouldBe` False
