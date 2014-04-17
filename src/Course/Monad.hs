{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Course.Monad where

import Course.Applicative
import Course.Bind
import Course.Core
import Course.Id
import Course.List
import Course.Optional
import qualified Prelude as P

class (Applicative f, Bind f) => Monad f where
  -- return :: a -> f a
  -- return = pure

  -- (>>=) :: f a -> (a -> f b) -> f b
  -- (>>=) = (Course.Bind.>>=)

  -- (>>) :: f a -> f b -> f b
  -- x >> y = x Course.Bind.>>= \_ -> y

instance Monad Id where

instance Monad List where

instance Monad Optional where

instance Monad ((->) t) where

-----------------------
-- SUPPORT LIBRARIES --
-----------------------

instance Monad IO where

instance Monad [] where

instance Monad P.Maybe where
